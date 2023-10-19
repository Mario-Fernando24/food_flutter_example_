import 'package:flutter/material.dart';
import 'package:food_mvvm/src/colors/colors.dart';
import 'package:food_mvvm/src/features/presentation/commons_wiget/header_text.dart';

Widget popularesCard(
    BuildContext context,
    double margintop,
    double marginrigth,
    double marginBotton,
    double marginLetf,
    String photo,
    String title,
    String subtitle,
    String review,
    String rating,
    String buttonText) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(
            top: margintop,
            right: marginrigth,
            bottom: marginBotton,
            left: marginLetf),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: NetworkImage(photo),
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(
                          title ?? '', Colors.black, FontWeight.bold, 17.0)),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      subtitle ?? '',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16.0),
                      Text(
                        review ?? '',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                      Text(
                        rating ?? '',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          width: 80.0,
                          height: 18.0,
                          child: buttonText.length > 0
                              ? ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.5,
                                    shape: StadiumBorder(),
                                    primary: accentColor,
                                    onPrimary: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Text(buttonText,
                                      style: TextStyle(fontSize: 11.0)),
                                )
                              : Text(""))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )
    ],
  );
}
