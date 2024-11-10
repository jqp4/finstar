import 'dart:math';

import 'package:finstar_test_task/src/features/loan_calculator/domain/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/domain/_barrel.dart';
import 'package:finstar_test_task/src/foundation/_barrel.dart';
import 'package:injectable/injectable.dart';

@singleton
class CalculateAnnuityPayments {
  const CalculateAnnuityPayments();

  // https://journal.tinkoff.ru/guide/credit-payment/
  Future<FullPaymentsDetails> call(LoanForm form) async {
    final firstMonthDate = DateTime.now().addMonths(1);

    final monthRate = form.interestRate / 12 / 100;
    final x = pow(1 + monthRate, form.termInMonths);
    final annuityCoefficient = (monthRate * x) / (x - 1);
    final fixedPayment = form.amount * annuityCoefficient;
    var residualBodyAmount = form.amount.toDouble();

    final totalOverpayment = fixedPayment * form.termInMonths - form.amount;
    final formattedFixedPayment = fixedPayment.customRound(2);

    return FullPaymentsDetails(
      totalOverpayment: totalOverpayment.customRound(2),
      minPaymentAmount: formattedFixedPayment,
      maxPaymentAmount: formattedFixedPayment,
      paymentSchedule: List.generate(
        form.termInMonths,
        (index) {
          final date = firstMonthDate.addMonths(index);
          final interestPayment = residualBodyAmount * form.interestRate / 12 / 100;
          final bodyPayment = fixedPayment - interestPayment;

          residualBodyAmount = residualBodyAmount - bodyPayment;

          return SinglePaymentScheduleLine(
            paymentDateTime: date,
            loanResidualAmount: residualBodyAmount.customRound(2),
            interestPaymentAmount: interestPayment.customRound(2),
            bodyPaymentAmount: bodyPayment.customRound(2),
            paymentAmount: fixedPayment.customRound(2),
          );
        },
      ),
    );
  }
}

@singleton
class CalculateDifferentiatedPayments {
  const CalculateDifferentiatedPayments();

  // https://journal.tinkoff.ru/guide/credit-payment/
  Future<FullPaymentsDetails> call(LoanForm form) async {
    final firstMonthDate = DateTime.now().addMonths(1);

    final fixedBodyPayment = form.amount / form.termInMonths;
    var residualBodyAmount = form.amount.toDouble();

    final paymentSchedule = List<SinglePaymentScheduleLine>.generate(
      form.termInMonths,
      (index) {
        final date = firstMonthDate.addMonths(index);
        final interestPayment = residualBodyAmount * form.interestRate / 12 / 100;
        final paymentAmount = fixedBodyPayment + interestPayment;

        residualBodyAmount = residualBodyAmount - fixedBodyPayment;

        return SinglePaymentScheduleLine(
          paymentDateTime: date,
          loanResidualAmount: residualBodyAmount.customRound(2),
          interestPaymentAmount: interestPayment.customRound(2),
          bodyPaymentAmount: fixedBodyPayment.customRound(2),
          paymentAmount: paymentAmount.customRound(2),
        );
      },
    );

    final totalOverpayment = paymentSchedule.map((e) => e.paymentAmount).reduce((a, b) => a + b) - form.amount;
    final minPaymentAmount = paymentSchedule.map((e) => e.paymentAmount).reduce((a, b) => a < b ? a : b);
    final maxPaymentAmount = paymentSchedule.map((e) => e.paymentAmount).reduce((a, b) => a > b ? a : b);

    return FullPaymentsDetails(
      totalOverpayment: totalOverpayment.customRound(2),
      minPaymentAmount: minPaymentAmount.customRound(2),
      maxPaymentAmount: maxPaymentAmount.customRound(2),
      paymentSchedule: paymentSchedule,
    );
  }
}
