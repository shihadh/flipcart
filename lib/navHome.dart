import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Navhome extends StatefulWidget {
  const Navhome({super.key});

  @override
  State<Navhome> createState() => _NavhomeState();
}

class _NavhomeState extends State<Navhome> {
  bool toogleSwitch=true;
  String on="";
  String off="OFF";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
    preferredSize: Size.fromHeight(180),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 212, 25, 245),
            const Color.fromARGB(255, 248, 238, 150)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Gap(40),
          Column(
            children: [
              Gap(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  appbarContainer(images: "images/flipcart_image1.png", colors: const Color.fromARGB(255, 255, 255, 0)),
                  appbarContainer(images: "images/flipcart_grocery.jpg"),
                  appbarContainer(images: "images/flipcart_plane.jpg"),
                  appbarContainer(images: "images/flipcart_pay.jpg"),
                ],
              ),
              Gap(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.apartment_rounded),
                  Text(
                    "Work",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(" kinfra bulilding, kinfra kakanjery, clelemra,kerala"),
                  Icon(Icons.arrow_forward_ios_outlined),
                ],
              ),
              Gap(5),
              Row(
                children: [
                  Column(
                    children: [
                      Text("Brand Mall"),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 30,
                          width: 60,
                          child: AnimatedToggleSwitch<bool>.size(
                            current: toogleSwitch,
                            values: [true, false],
                            onChanged: (value) => setState(() {
                              if (toogleSwitch == false) {
                                on = "";
                                off = "OFF";
                              } else {
                                on = "ON";
                                off = "";
                              }
                              toogleSwitch = value;
                            }),
                            style: ToggleStyle(
                              backgroundColor: Colors.grey[200],
                              indicatorColor: Colors.white,
                              borderColor: Colors.transparent,
                            ),
                            customIconBuilder: (context, local, global) => Text(
                              local.value ? on : off,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "search",
                          prefixIcon: IconButton(
                              color: Colors.blue, onPressed: () {}, icon: Icon(Icons.search)),
                          suffixIcon: IconButton(
                              color: Colors.black, onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    ),
  ),
      body: ListView(
        children: [
          

          Gap(8),
          //  Image.asset("images/ad.jpg"),
          CarouselSlider(items: 
          [
            ads(images: "images/ad.jpg"),
            ads(images: "images/Ad2.jpg"),
            ads(images: "images/Ad3.jpg"),
            ads(images: "images/Ad4.jpg"),
            ads(images: "images/Ad5.jpg"),
            
          ], 
          options: CarouselOptions(
            aspectRatio: 16/7,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),

            
          )),
           Gap(15),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               thirdColum(image: "images/superCoin.png",Texts: "SuperCoin"),
               thirdColum(image: "images/coupen.png", Texts: "Coupen"),
               thirdColum(image: "images/pluse.png", Texts: "Plus"),
               thirdColum(image: "images/creditcard.png", Texts: "Credit"),
               thirdColum(image: "images/group.png", Texts: "Group Buy")
             ],
           ),
           Gap(15),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              forthColum(
                image: "https://rukminim2.flixcart.com/image/312/312/xif0q/computer/w/u/e/-original-imah46f8th3pnphq.jpeg?q=70",
                pname: "Laptop Deals",
                prize: "From ₹14,999"
                ),
                forthColum(image: "https://rukminim2.flixcart.com/flap/80/80/image/29327f40e9c4d26b.png?q=100",
                 pname: "Extra ₹75 off", prize: "Sales is Live"),
                 forthColum(image: "https://rukminim2.flixcart.com/image/612/612/xif0q/smartwatch/f/y/n/-original-imagpma7zwgvg4vg.jpeg?q=70",
                 pname: "Smart Watch", prize: "Starting ₹1,499")
            ],
           ),
           Gap(15),
           Row(
             children: [
              Gap(10),
               Text("Recently Viewed Store",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
             ],
           ),
           Gap(15),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              forthColum(
                image: "https://rukminim2.flixcart.com/image/612/612/xif0q/gaming-chair/h/o/q/1-usa-gaming-chair-massage-pillow-footrest-ergonomic-office-original-imah5zx6xnzzbvcn.jpeg?q=70",
                pname: "Office Chair",
                prize: "₹10,000"
                ),
                forthColum(image: "https://rukminim2.flixcart.com/image/612/612/xif0q/projector/x/a/e/zeb-pixaplay-63-zeb-mlp-7-13-05-zeb-pixaplay-63-zeb-mlp-7-led-original-imah8r9fgjfs27jh.jpeg?q=70",
                 pname: "Zeb-Pixaplay", prize: "8,999"),
                 forthColum(image: "https://rukminim2.flixcart.com/image/612/612/xif0q/speaker/f/c/m/-original-imah53fq9xjsbmaw.jpeg?q=70",
                 pname: "Boult Bassbox", prize: "₹1,699")
            ],
           ),
           Gap(15)
           
           
        ],
      ),
    
     
      

    );
  }

  Container ads({
    required images
  }) {
    return Container(
      width: double.infinity,
            margin: EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(images),fit: BoxFit.contain),
            ),
            );
  }

  Container forthColum({
    required image,
    required String pname,
    required String prize
  }) {
    return Container(
              height: 150,
              width: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [const Color.fromARGB(255, 243, 154, 183),const Color.fromARGB(255, 112, 178, 233)],begin: Alignment.center),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                            width: 140,
                            height: 100,
                        child: Card(color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                image,
                                width: 90,
                                height: 90,
                                ),
                            ),
                          ),
                          
                        ),
                      ),
                      
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Column(
                          children: [
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(pname),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(prize,style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ],
                        )),
                      ),
                      
                    ],
                  ),
                ),
              ),
            );
  }

  Column thirdColum({
    required image,
    required String Texts
  }) {
    return Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 35,
              ),
              Gap(3),
              Text(
                Texts,
                style: TextStyle(fontWeight: FontWeight.bold),
                )
          ],
         );
  }

  Container appbarContainer({
    required images ,
    colors

  }) {
    return Container(
                width: 90,
                height: 70,
                
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colors,
                ),
                
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(images,fit: BoxFit.cover,
                  width: 90,
                  height: 70,
                  
                  )),
                  
               
              );
  }
}
      
  