import 'package:flipcart/NavCart.dart';
import 'package:flipcart/demo.dart';
import 'package:flipcart/home.dart';
import 'package:flipcart/navAccount.dart';
import 'package:flipcart/navNotification.dart';
import 'package:flipcart/orderPage.dart';
import 'package:flipcart/splash.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}