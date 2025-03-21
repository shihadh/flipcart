import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Navcategories extends StatefulWidget {
  const Navcategories({super.key});

  @override
  State<Navcategories> createState() => _NavcategoriesState();
}

class _NavcategoriesState extends State<Navcategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("All categories",style: TextStyle(color: Colors.white),),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined,size: 30,color: Colors.white,))],
      ),
      body: Column(
        children: [
          Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Containers(image: "images/Catogories/tag.png", Texts: "Top Offers"),
              Containers(image: "images/Catogories/grocery.png", Texts: "Grocery"),
              Containers(image: "images/Catogories/mobile.png", Texts: "Mobile"),
              Containers(image: "images/Catogories/fashon.png", Texts: "Fashion"),
              
            ],
          ),
          Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Containers(image: "images/Catogories/electronics.png", Texts: "Electronics"),
              Containers(image: "images/Catogories/home.png", Texts: "Home"),
              Containers(image: "images/Catogories/persanal.png", Texts: "Personal Care"),
              Containers(image: "images/Catogories/aplications.png", Texts: "Applications"),
            ],
          ),
          Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Containers(image: "images/Catogories/toy.png", Texts: "Toys & Baby"),
              Containers(image: "images/Catogories/furneture.png", Texts: "Furniture"),
              Containers(image: "images/Catogories/travel.png", Texts: "Flights & Hotels"),
              Containers(image: "images/Catogories/insurance.png", Texts: "Insurance"),
            ],
          ),
          Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Containers(image: "images/Catogories/sports.png", Texts: "Sports"),
              Containers(image: "images/Catogories/nutitios.png", Texts: "Nuritions & more"),
              Containers(image: "images/Catogories/bike.png", Texts: "Bike & Cars"),
              Containers(image: "images/creditcard.png", Texts: "Gifts Cards"),
            ],
          ),
          Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Containers(image: "images/Catogories/medcine.png", Texts: "Medicines"),
              Containers(image: "images/Catogories/home service.png", Texts: "Home Service"),
              Containers(image: "images/Catogories/sell.png", Texts: "Sell-Back"),
              SizedBox(width: 65,)
            ],
          ),
          
          
        ],
      ),
    );
  }
  
  Column Containers({
    required image,
    required String Texts
  }) {
    return Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 45,
              ),
              Gap(3),
              Text(
                Texts,
                style: TextStyle(fontWeight: FontWeight.bold),
                )
          ],
         );
  }
}