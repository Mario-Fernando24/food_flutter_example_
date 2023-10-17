import 'package:flutter/material.dart';
import 'package:food_mvvm/src/features/presentation/commons_wiget/header_text.dart';

Widget cardvertical(BuildContext context, double width, double height, String image, String title, String subtitle) {
  return Container(
    margin: const EdgeInsets.all(5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
              width: width,
              height: height,
              fit: BoxFit.cover,
              image: NetworkImage(image)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            headerText("${title}", Colors.black, FontWeight.bold, 15.0),
            headerText("${subtitle}", Colors.grey, FontWeight.w500, 12.0)

          ],
        )
      ],
    ),
  );
}