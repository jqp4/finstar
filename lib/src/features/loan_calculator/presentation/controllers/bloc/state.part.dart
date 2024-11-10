part of 'bloc.dart';

@freezed
class LoanCalculatorState with _$LoanCalculatorState {
  const factory LoanCalculatorState.initial() = _Initial;

  const factory LoanCalculatorState.pending() = _Pending;

  const factory LoanCalculatorState.loaded() = _Loaded;

  const factory LoanCalculatorState.failure(String failureDescription) = _Failure;

  const factory LoanCalculatorState.formSaved() = _FormSaved;
}
