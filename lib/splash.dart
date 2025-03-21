import 'package:flipcart/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    flip(context);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.amberAccent,
              child: Image.asset("images/flip_Splash .jpg",fit: BoxFit.fill,)),
          ),
        ],
      ),
    );
  }
  
}
Future<void>flip(BuildContext context)async{
  await Future.delayed(Duration(seconds: 3));
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
}