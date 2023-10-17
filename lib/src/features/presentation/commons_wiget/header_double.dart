import 'package:flutter/material.dart';
import 'package:food_mvvm/src/features/presentation/commons_wiget/header_text.dart';

Widget headerDoubleText(String textHeaders, String textAction, VoidCallback func) {
  return Container(
    child: Row(
      children: [
        headerText(textHeaders, Colors.black, FontWeight.bold, 18.0),
        Spacer(),
        GestureDetector(
          onTap: func,
            child: headerText(textAction, Colors.orange, FontWeight.w500, 13.0))
      ],
    ),
  );
}
