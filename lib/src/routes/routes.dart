import 'package:flutter/cupertino.dart';
import 'package:food_mvvm/src/features/presentation/filter_page/View/filter_page.dart';
import 'package:food_mvvm/src/features/presentation/forgot_password/View/forgot_password.dart';
import 'package:food_mvvm/src/features/presentation/login_page/View/login_page.dart';
import 'package:food_mvvm/src/features/presentation/search_page/View/searchView.dart';
import 'package:food_mvvm/src/features/presentation/sign_up_page/View/sign_up.dart';
import 'package:food_mvvm/src/features/presentation/tabs/tabs_page.dart';

import '../features/presentation/welcome_page/View/welcome_page.dart';

final routes =<String, WidgetBuilder> {
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgot_password' : (BuildContext context) => ForgotPasswordPage(),
  'sign_up' :  (BuildContext context) => SignUPage(),
  'tabs' :  (BuildContext context) => TabsPage(),
  'search' :  (BuildContext context) => SearchPage(),
  'filter_page' :  (BuildContext context) => FilterPage(),

};