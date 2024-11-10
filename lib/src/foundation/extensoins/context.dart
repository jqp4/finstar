import 'package:flutter/material.dart';

extension ThemeProviderExtention on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension ScreenSizeExtensions on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
  EdgeInsets get screenPadding => MediaQuery.of(this).padding;

  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
  double get statusBarHeight => screenPadding.top;
  double get bottomPadding => screenPadding.bottom;
}

extension MediaQueryExtensions on BuildContext {
  bool get isLandscape => MediaQuery.of(this).orientation == Orientation.landscape;
  bool get isPortrait => MediaQuery.of(this).orientation == Orientation.portrait;
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;
}

extension FocusExtensions on BuildContext {
  void unfocus() {
    FocusScope.of(this).unfocus();
  }

  void requestFocus(FocusNode node) {
    FocusScope.of(this).requestFocus(node);
  }
}
