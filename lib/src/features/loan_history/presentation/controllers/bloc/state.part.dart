part of 'bloc.dart';

@freezed
class LoanHistoryState with _$LoanHistoryState {
  const factory LoanHistoryState.initial() = _Initial;

  const factory LoanHistoryState.pending() = _Pending;

  const factory LoanHistoryState.loaded() = _Loaded;

  const factory LoanHistoryState.failure(String failureDescription) = _Failure;
}
