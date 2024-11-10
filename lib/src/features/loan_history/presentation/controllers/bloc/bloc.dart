import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:finstar_test_task/src/core/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/domain/_barrel.dart';
import 'package:finstar_test_task/src/foundation/_barrel.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';

part 'bloc.freezed.dart';
part 'event.part.dart';
part 'state.part.dart';

class LoanHistoryBloc extends Bloc<LoanHistoryEvent, LoanHistoryState> {
  LoanHistoryBloc() : super(const LoanHistoryState.initial()) {
    on<_Read>(_read);
    on<_Delete>(_delete);
  }

  static final _log = Logger('LoanHistoryBloc');

  final List<StoredLoanForm> _forms = [];
  List<StoredLoanForm> get forms => _forms;

  Future _read(
    _Read event,
    Emitter<LoanHistoryState> emit,
  ) async {
    if (state is _Pending) return;
    emit(const _Pending());

    _log.info('_Read: Catch event');

    final maybeForms = await inject<ReadAllLoanForms>()();

    if (maybeForms.isLeft()) {
      final failureDescription = maybeForms.asLeft().description;
      _log.info('_Read: Failure: $failureDescription');
      emit(_Failure(failureDescription));
      return;
    }

    _forms
      ..clear()
      ..addAll(maybeForms.asRight());

    _log.info('_Read: Done, returns ${_forms.length} forms');
    emit(const _Loaded());
  }

  Future _delete(
    _Delete event,
    Emitter<LoanHistoryState> emit,
  ) async {
    if (state is _Pending) return;
    emit(const _Pending());

    _log.info('_Delete: Catch event');

    final maybeResult = await inject<DeleteLoanForm>()(event.storageId);

    if (maybeResult.isLeft()) {
      final failureDescription = maybeResult.asLeft().description;
      _log.info('_Delete: Failure: $failureDescription');
      emit(_Failure(failureDescription));
      return;
    }

    if (!maybeResult.asRight()) {
      const failureDescription = "Doesn't delete LoanForm";
      _log.info('_Delete: Failure: $failureDescription');
      emit(const _Failure(failureDescription));
      return;
    }

    _log.info('_Delete: Done');
    add(const _Read());
    emit(const _Loaded());
  }
}
