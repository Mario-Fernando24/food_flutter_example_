import 'package:flutter/material.dart';
import 'package:food_mvvm/src/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'welcome',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black
          )
        )
      ),
      title: 'Delivered',
    );
  }
}