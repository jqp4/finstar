import 'dart:math';

extension DoubleX on double {
  double customRound(int places) {
    final mod = pow(10.0, places);
    return (this * mod).round().toDouble() / mod;
  }
}
