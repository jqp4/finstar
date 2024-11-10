import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoadingOverlay {
  LoadingOverlay();

  OverlayEntry? _overlay;

  void show(BuildContext context) {
    if (_overlay == null) {
      _overlay = OverlayEntry(
        builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      );

      Overlay.of(context).insert(_overlay!);
    }
  }

  void hide() {
    if (_overlay != null) {
      _overlay!.remove();
      _overlay = null;
    }
  }
}
