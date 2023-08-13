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
        accentColor: Color.fromRGBO(255, 140, 0, 1.0),
        primaryColor: Color.fromRGBO(10, 31, 68, 1.0),
        buttonColor: Color.fromRGBO(0, 122, 255, 1.0),
        disabledColor: Color.fromRGBO(142, 142, 147, 1.2),
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