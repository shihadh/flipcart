import 'package:flipcart/cartFlip.dart';
import 'package:flipcart/cartGro.dart';
import 'package:flutter/material.dart';

class NavCart extends StatefulWidget {
  const NavCart({super.key});

  @override
  State<NavCart> createState() => _NavCartState();
}

class _NavCartState extends State<NavCart> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold),),
          bottom: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blueAccent,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
            indicatorWeight: 3,
            tabs:[
            Tab(text: "Flipcart"),
            Tab(text: "Grocery")
            ]
            ),
        ),
        body: TabBarView(children: [
          Cartflip(),
          CartGro()
        ]
        
        ),
      ),
    );
  }
}