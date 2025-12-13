import 'package:flutter/cupertino.dart';
import 'package:tongi_turf/core/widgets/core_widgets.dart';

void showAppConfirmationDialog({
  required BuildContext context,
  required String title,
  required String message,
  required VoidCallback onConfirm,
  String confirmText = 'Confirm',
  String cancelText = 'Cancel',
  bool isDestructive = false,
}) {
  showCupertinoDialog(
    context: context,
    builder: (_) => AppConfirmationDialog(
      title: title,
      message: message,
      confirmText: confirmText,
      cancelText: cancelText,
      isDestructive: isDestructive,
      onConfirm: onConfirm,
    ),
  );
}
