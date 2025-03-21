import 'package:flipcart/orderPage.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NavAccount extends StatefulWidget {
  const NavAccount({super.key});

  @override
  State<NavAccount> createState() => _NavAccountState();
}

class _NavAccountState extends State<NavAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "Hey! Rashid Rahman",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50),     
                          ),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/superCoin.png",
                              height: 25,
                              width: 25,
                            ),
                            
                            const Text( "700",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                            ),SizedBox(width: 5,)
                          ],
                        ),
                      ),
                      
                      
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text("Explore"),
                          Text(" Flipcart",style: TextStyle(color: Colors.blueAccent,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
                          Text(" Plus",style: TextStyle(color: Colors.amberAccent,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 15,))
                        ],
                      )
                    ],
                  )
                ],
              ),
              
            ),
          ),
          Gap(8),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 140,
                  color: Colors.white,
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Row(
                      children: [
                        Gap(10),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
                            },
                            child: supports(iconz: Icons.local_shipping_outlined,name: "Orders")),
                        ),
                        Gap(10),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: supports(name: "Wishlist", iconz: Icons.favorite_border)),
                        ),
                        Gap(10),
                         
                      ],
                    ),
                    Gap(10),
                   Row(
  children: [
    const Gap(10),
    Expanded(
      flex: 1,
      child:  supports(iconz: Icons.wallet_giftcard_outlined,name: "Coupen"),
    ),
    const Gap(10),
    Expanded(
      flex: 1,
      child: supports(name: "Help Center", iconz: Icons.headset_mic_outlined),
    ),
    const Gap(10),
  ],
),

                  ],
                  ),
                  
                ),
              ),
              
            ],
          ),
          Gap(10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("Credit Options",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              ],
                            ),
                            Row(
                              
                              children: [
                                Icon(Icons.calendar_today,color: Colors.blueAccent,),
                                Gap(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    
                                    Text("Flipcart Pay Later",style: TextStyle(fontWeight: FontWeight.bold)),
                                    Text("Complete application & get ₹500* gift card"),
                                  ],
                                ),
                                Gap(30),
                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                              ],
                            ),
                            Gap(3),
                            Row(
                              children: [
                                Icon(Icons.credit_card_outlined,color: Colors.blueAccent,),
                                Gap(10),
                                Text("Flipcart Axis Bank Credit Card",style: TextStyle(fontWeight: FontWeight.bold)),
                                Gap(110),
                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      height: 270,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset("images/Soundbox.jpg")),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          
                                          Text("SoundWoofers staring at ₹5,000",style: TextStyle(fontWeight: FontWeight.bold)),
                                          Text("Decarate your home with sound"),
                                        ],
                                      ),
                              ),
                                    Gap(120),
                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                            ],
                            
                          ),
                                
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Gap(20),
              Row(
                children: [
                  expList(HeadName: "Account Settings",
                  NameOne: "Flipcart Plus",
                  NameTwo: "Edit Profile",
                  g1: 220,
                  g2: 230,
                  icon1: Icons.add,
                  icon2: Icons.account_circle_outlined
                  ),
                ],
              ),
              Gap(20),
              Row(
                children: [
                  expList(HeadName: "My activity", 
                  NameOne: "Reviews",
                  NameTwo: "Question & Answers", 
                  g1: 250, 
                  g2: 171,
                  icon1: Icons.note_alt_outlined,
                  icon2: Icons.question_answer
                  )
                ],
              ),
              Gap(20),
              Row(
                children: [
                  expList(HeadName: "Earn with Flipcart", 
                  NameOne: "Flipcart Creater Studio",
                  NameTwo: "Sell On Flipcart", 
                  g1: 150, 
                  g2: 200,
                  icon1: Icons.star_border,
                  icon2: Icons.shopify_outlined
                  )
                ],
              ),
              Gap(20),
              Row(
                children: [
                  expList(HeadName: "Feedback & Information", 
                  NameOne: "Terms, Policy and License",
                  NameTwo: "Browse FAQs", 
                  g1: 130, 
                  g2: 215,
                  icon1: Icons.note_outlined,
                  icon2: Icons.question_mark_outlined
                  )
                ],
              ),
              Gap(20),
              Row(
                children: [
                  Gap(20),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      height: 50,
                      child: Center(child: Text("Logout",style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                      ),
                      )
                      ),
                    ),
                  ),
                  Gap(20)
                ],
              ),Gap(20)
              
              
        ],
      ),
    );
  }

  Expanded expList({
    required String HeadName,
    required String NameOne,
    required String NameTwo,
    required double g1,
    required double g2,
    required icon1,
    required icon2
  }) {
    return Expanded(
                  child: Container(
                    color: Colors.white,
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(HeadName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            ],
                          ),
                       
                          Gap(3),
                          Row(
                            children: [
                              Icon(icon1,color: Colors.blueAccent,),
                              Gap(10),
                              Text(NameOne,style: TextStyle(fontWeight: FontWeight.bold)),
                              Gap(g1),
                              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                            ],
                          ),
                          Row(
                            children: [
                              Icon(icon2,color: Colors.blueAccent,),
                              Gap(10),
                              Text(NameTwo,style: TextStyle(fontWeight: FontWeight.bold)),
                              Gap(g2),
                              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
  }

Widget supports({
  required String name,
  required IconData iconz,
  VoidCallback? onTap,
}) {
  return InkWell(
    onTap: onTap, 
    child: Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Row(
        children: [
          const Gap(5),
          Icon(iconz, color: Colors.blueAccent),
          const Gap(5),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  );
}

  }

