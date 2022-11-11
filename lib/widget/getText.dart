import 'package:flutter/material.dart';

Widget getText(String title, double size, FontWeight fontWeight, Color color,
    String fontFamily) {
  return Text(
    title,
    style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
        fontFamily: fontFamily),
  );
}
