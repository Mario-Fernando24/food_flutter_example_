import 'package:flutter/cupertino.dart';
import 'package:food_mvvm/src/pages/forgot_password.dart';
import 'package:food_mvvm/src/pages/login_page.dart';
import 'package:food_mvvm/src/pages/welcome_page.dart';

final routes =<String, WidgetBuilder> {
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgot_password' : (BuildContext context) => ForgotPasswordPage()


};