import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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


