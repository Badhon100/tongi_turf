import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tongi_turf/core/widgets/custom_widgets.dart';

commonText(
  String text, {
  Color color = Colors.white,
  double size = 12,
  FontWeight fontWeight = FontWeight.normal,
  int? maxLine = null,
}) => Text(
  text,
  style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight),
  maxLines: maxLine,
);

Widget logo({double height = 100}) {
  return Image.asset("assets/images/logo.png", height: height);
}

greenToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.green,
    textColor: Colors.white,
    fontSize: 14.0,
  );
}

redToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 14.0,
  );
}


class AppConfirmationDialog extends StatelessWidget {
  final String title;
  final String message;
  final String confirmText;
  final String cancelText;
  final VoidCallback onConfirm;
  final bool isDestructive;

  const AppConfirmationDialog({
    super.key,
    required this.title,
    required this.message,
    required this.onConfirm,
    this.confirmText = 'Confirm',
    this.cancelText = 'Cancel',
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: t24b900_Primary(title),
      content: t14_textSecondary(message),
      actions: [
        CupertinoDialogAction(
          onPressed: () => Navigator.pop(context),
          child: t14_textSecondary(cancelText),
        ),
        CupertinoDialogAction(
          isDestructiveAction: isDestructive,
          onPressed: () {
            Navigator.pop(context);
            onConfirm();
          },
          child: t14b600_accentRed(confirmText),
        ),
      ],
    );
  }
}
