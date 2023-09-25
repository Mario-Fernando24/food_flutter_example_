import 'package:flutter/material.dart';

Widget headerText(String text, Color color, fontWeight, double fontsize) {
  return Text(
    text,
    style: TextStyle(
        color:color, fontWeight: fontWeight, fontSize: fontsize),
  );
}
