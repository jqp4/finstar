import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:finstar_test_task/src/core/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_calculator/domain/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/domain/_barrel.dart';
import 'package:finstar_test_task/src/foundation/_barrel.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';

part 'bloc.freezed.dart';
part 'event.part.dart';
part 'state.part.dart';

class LoanCalculatorBloc extends Bloc<LoanCalculatorEvent, LoanCalculatorState> {
  LoanCalculatorBloc(LoanForm initialLoanForm)
      : _form = initialLoanForm,
        super(const LoanCalculatorState.initial()) {
    on<_UpdateAmount>(_updateAmount);
    on<_UpdateInterestRate>(_updateInterestRate);
    on<_UpdateTermInMonths>(_updateTermInMonths);
    on<_UpdatePaymentType>(_updatePaymentType);
    on<_CalculatePayments>(_calculatePayments);
    on<_SaveForm>(_saveForm);
  }

  static final _log = Logger('LoanCalculatorBloc');

  late LoanForm _form;
  LoanForm get form => _form;

  FullPaymentsDetails? _paymentsDetails;
  FullPaymentsDetails? get paymentsDetails => _paymentsDetails;

  Future _updateAmount(
    _UpdateAmount event,
    Emitter<LoanCalculatorState> emit,
  ) async {
    if (state is _Pending) return;
    if (event.value == null || event.value == _form.amount) return;
    emit(const _Pending());

    _log.info('_UpdateAmount: Catch event, value = ${event.value}');
    _form = _form.copyWith(amount: event.value);

    add(const _CalculatePayments());
    emit(const _Loaded());
  }

  Future _updateInterestRate(
    _UpdateInterestRate event,
    Emitter<LoanCalculatorState> emit,
  ) async {
    if (state is _Pending) return;
    if (event.value == null || event.value == _form.interestRate) return;
    emit(const _Pending());

    _log.info('_UpdateInterestRate: Catch event, value = ${event.value}');
    _form = _form.copyWith(interestRate: event.value);

    add(const _CalculatePayments());
    emit(const _Loaded());
  }

  Future _updateTermInMonths(
    _UpdateTermInMonths event,
    Emitter<LoanCalculatorState> emit,
  ) async {
    if (state is _Pending) return;
    if (event.value == null || event.value == _form.termInMonths) return;
    emit(const _Pending());

    _log.info('_UpdateTermInMonths: Catch event, value = ${event.value}');
    _form = _form.copyWith(termInMonths: event.value);

    add(const _CalculatePayments());
    emit(const _Loaded());
  }

  Future _updatePaymentType(
    _UpdatePaymentType event,
    Emitter<LoanCalculatorState> emit,
  ) async {
    if (state is _Pending) return;
    if (event.value == null || event.value == _form.paymentType) return;
    emit(const _Pending());

    _log.info('_UpdatePaymentType: Catch event, value = ${event.value}');
    _form = _form.copyWith(paymentType: event.value);

    add(const _CalculatePayments());
    emit(const _Loaded());
  }

  Future _calculatePayments(
    _CalculatePayments event,
    Emitter<LoanCalculatorState> emit,
  ) async {
    if (state is _Pending) return;
    emit(const _Pending());

    _log.info('_CalculatePayment: Catch event');

    _paymentsDetails = await switch (_form.paymentType) {
      PaymentType.annuity => inject<CalculateAnnuityPayments>()(_form),
      PaymentType.differentiated => inject<CalculateDifferentiatedPayments>()(_form),
    };

    _log.info('_CalculatePayment: Done');
    emit(const _Loaded());
  }

  Future _saveForm(
    _SaveForm event,
    Emitter<LoanCalculatorState> emit,
  ) async {
    if (state is _Pending) return;
    emit(const _Pending());

    _log.info('_SaveForm: Catch event');

    final result = await inject<StoreLoanForm>()(_form);

    if (result.isLeft()) {
      final failureDescription = result.asLeft().description;
      _log.info('_SaveForm: Failure: $failureDescription');
      emit(_Failure(failureDescription));
      return;
    }

    _log.info('_SaveForm: Done');
    emit(const _FormSaved());
    emit(const _Loaded());
  }
}
