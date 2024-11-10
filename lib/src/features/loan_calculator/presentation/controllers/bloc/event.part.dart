part of 'bloc.dart';

@freezed
class LoanCalculatorEvent with _$LoanCalculatorEvent {
  const factory LoanCalculatorEvent.updateAmount(int? value) = _UpdateAmount;

  const factory LoanCalculatorEvent.updateInterestRate(double? value) = _UpdateInterestRate;

  const factory LoanCalculatorEvent.updateTermInMonths(int? value) = _UpdateTermInMonths;

  const factory LoanCalculatorEvent.updatePaymentType(PaymentType? value) = _UpdatePaymentType;

  const factory LoanCalculatorEvent.calculatePayments() = _CalculatePayments;

  const factory LoanCalculatorEvent.saveForm() = _SaveForm;
}
