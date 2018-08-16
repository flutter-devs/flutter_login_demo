import 'dart:async';

import 'package:AeologicSplashDemo/Constant/Constant.dart';
import 'package:AeologicSplashDemo/Screens/SplashScreen.dart';
import 'package:AeologicSplashDemo/Screens/LoginScreen.dart';
import 'package:AeologicSplashDemo/Screens/SignUpScreen.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

main() {

  runApp(new MaterialApp(
    title: 'FluterLogindemo',
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      accentColor: Colors.black
        ,
      primaryColor: Colors.black,
      primaryColorDark: Colors.black

    ),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      LOGIN_SCREEN: (BuildContext context) => new LogInScreen(),
      SIGN_UP_SCREEN: (BuildContext context) => new SignUpScreen(),
      ANIMATED_SPLASH: (BuildContext context) => new SplashScreen()
    },
  ));
}


