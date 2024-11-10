import 'package:finstar_test_task/src/core/_barrel.dart';
import 'package:flutter/widgets.dart';

extension LoadingOverlayExtensions on BuildContext {
  void showLoadingOverlay() {
    inject<LoadingOverlay>().show(this);
  }

  void hideLoadingOverlay() {
    inject<LoadingOverlay>().hide();
  }
}
