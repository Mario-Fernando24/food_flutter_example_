import 'package:flutter/material.dart';

class MyOrderTabs extends StatefulWidget {
  const MyOrderTabs({super.key});

  @override
  State<MyOrderTabs> createState() => _MyOrderTabsState();
}

class _MyOrderTabsState extends State<MyOrderTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("My Order Tabs"),
    );
  }
}