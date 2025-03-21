import 'package:flutter/material.dart';

class Navnotification extends StatefulWidget {
  const Navnotification({super.key});

  @override
  State<Navnotification> createState() => _NavnotificationState();
}

class _NavnotificationState extends State<Navnotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("No Notification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),)),
    );
  }
}