import 'dart:convert';

import 'package:apptest/models/Product.dart';
import 'package:apptest/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:apptest/routes.dart';
import 'package:apptest/screens/profile/profile_screen.dart';
import 'package:apptest/screens/splash/splash_screen.dart';
import 'package:apptest/network/ProductNetwork.dart';
import 'package:apptest/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

// source: https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI