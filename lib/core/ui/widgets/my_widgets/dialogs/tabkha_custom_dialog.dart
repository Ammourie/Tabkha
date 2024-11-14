import 'package:flutter/material.dart';
import 'package:meal_mate/core/common/app_config.dart';

enum DialogPosition { top, bottom, left, right, center }

Future<void> showTabkhaCustomDialog({
  required Widget child,
  DialogPosition startPosition = DialogPosition.bottom,
}) async {
  Offset getStartOffset() {
    switch (startPosition) {
      case DialogPosition.top:
        return const Offset(0, -1.0);
      case DialogPosition.bottom:
        return const Offset(0, 1.0);
      case DialogPosition.left:
        return const Offset(-1.0, 0);
      case DialogPosition.right:
        return const Offset(1.0, 0);
      case DialogPosition.center:
        return const Offset(0, 0);
    }
  }

  await showGeneralDialog(
    context: AppConfig().appContext!,
    barrierDismissible: true,
    barrierLabel: MaterialLocalizations.of(AppConfig().appContext!)
        .modalBarrierDismissLabel,
    pageBuilder: (context, animation, secondaryAnimation) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: getStartOffset(),
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: animation,
          curve: Curves.easeOut,
        )),
        child: child,
      );
    },
  );
}
