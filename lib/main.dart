import 'dart:convert';

import 'package:apptest/models/Product.dart';
import 'package:apptest/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:apptest/routes.dart';
import 'package:apptest/screens/profile/profile_screen.dart';
import 'package:apptest/screens/splash/splash_screen.dart';
import 'package:apptest/network/ProductNetwork.dart';
import 'package:apptest/theme.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'models/transaction.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<Transaction>('products');

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
// vcl
// source: https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI