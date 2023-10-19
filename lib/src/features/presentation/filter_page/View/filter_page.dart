import 'package:flutter/material.dart';
import 'package:food_mvvm/src/features/presentation/commons_wiget/header_text.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarr(context)
    );
  }
}

 appBarr(BuildContext context){
  return AppBar(
    elevation: 0.5,
    backgroundColor: Colors.white,
    title: Center(
      child: Container(
        child: headerText("Filter", Colors.black, FontWeight.w600, 20)),
    ),
    leading: Container(
      padding: EdgeInsets.only(top: 20, left: 5.0),
      child: headerText("Reset", Colors.black, FontWeight.w500, 17)),
    actions: [
      GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(
        padding: EdgeInsets.only(top: 20, right: 30),
        child: headerText("Done", Colors.orange, FontWeight.w500, 17)),
      )
    ],
  );
}