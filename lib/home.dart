import 'package:flipcart/NavCart.dart';
import 'package:flipcart/navAccount.dart';
import 'package:flipcart/navCategories.dart';
import 'package:flipcart/navHome.dart';
import 'package:flipcart/navNotification.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexNum=0;
  List tabWidget=[
    Navhome(),
    Navcategories(),
    Navnotification(),
    NavAccount(),
    NavCart()
    
  ];

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
           type: BottomNavigationBarType.fixed,
           currentIndex: indexNum,
           onTap: (value) {
             setState(() {
               indexNum=value;
             });
           },
          items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
        label: "home"
        ),
        BottomNavigationBarItem(icon: Icon(Icons.category_outlined),
        label: "categories"
        ),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_none_outlined),
        label: "notification"
        ),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),
        label: "account"
        ),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),
        label: "cart"
        )

      ],
      selectedItemColor: Colors.blue,
      
      ),
      body: tabWidget.elementAt(indexNum),

    );
  }

  }
