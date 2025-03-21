import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartGro extends StatefulWidget {
  const CartGro({super.key});

  @override
  State<CartGro> createState() => _CartGroState();
}

class _CartGroState extends State<CartGro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Deliver to: "),
                                Text("Rashid Rahman, 676302",style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                            Text("THAYEVITTLIL HOUSE, karipor p.o, thaye..",style: TextStyle(color: Colors.blueGrey),)
                          ],
                        ),
                        Gap(10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)
                            ),
                            elevation: 1,
                            minimumSize: Size(10, 40),
                          ),
                          onPressed: (){}, 
                          child: Text(
                            "Change",
                            style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                            
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Gap(3),
          Expanded(
            child: ListView(
              children: [
                cartCad(
                images: "https://m.media-amazon.com/images/I/41jnra-ZZXL.AC_SX250.jpg",
                productName: "Happilo 100% Natural & Crunchy Premium",
                productDes: "Happilo",
                oldPrize: "₹1,550 ",
                newPrize: "₹1,311 ",
              ),
              Gap(15),
              cartCad(
            images: "https://m.media-amazon.com/images/I/41M9PCZHrCL.AC_SX250.jpg",
            productName: "Ferrero Rocher, Exquisite Hazelnut",
            productDes: "Ferrero",
            oldPrize: "₹589 ",
            newPrize: "₹500 ",
          ),
          Gap(15),
              cartCad(
            images: "https://m.media-amazon.com/images/I/41t611Pw+GL.AC_SX250.jpg",
            productName: "Nescafe Gold Instant Coffee Powder",
            productDes: "Nescafe",
            oldPrize: "₹1,200 ",
            newPrize: "₹1,050 ",
          ),
              ]
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 70,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text("₹2,600",style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough,fontSize: 15),),
                          Row(
                            children: [
                              Text("2,500",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              Gap(10),
                              Icon(Icons.warning_amber_outlined,size: 15,)
                            ],
                          )
                        ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            backgroundColor: Colors.amber,
                            minimumSize: Size(200, 100)
                          ),
                          onPressed: (){}, child: Text(
                            "Place Order",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                              ),))
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
          
          
          
        ],
      ),
    );
  }

  Row cartCad({
    required images,
    required String productName,
    required String productDes,
    required String oldPrize,
    required String newPrize,
  }) {
    return Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                height: 235,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.network(
                                images,
                                height: 100,
                                width: 100,
                                ),
                                Gap(10),
                                Container(
                                  width: 75,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Qty: 1",style: TextStyle(fontWeight: FontWeight.bold),),
                                        Icon(Icons.arrow_drop_down)
                                      ],
                                    ),
                                )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(productName,style: TextStyle(fontWeight: FontWeight.bold)),
                              Text(productDes,style: TextStyle(color: Colors.blueGrey)),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.green,size: 20),
                                  Icon(Icons.star,color: Colors.green,size: 20),
                                  Icon(Icons.star,color: Colors.green,size: 20),
                                  Icon(Icons.star,color: Colors.green,size: 20),
                                  Icon(Icons.star,color: Colors.grey,size: 20),
                                  Gap(3),
                                  Text("(5)")
                                ],
                              ),
                              Gap(15),
                              Row(
                                children: [
                                  Text("20% off ",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold)),
                                  Text(oldPrize,style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough)),
                                  Text(newPrize,style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Text("4 offers applied - 2 offers available",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold)),

                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text("Deliverd by thu march 20 | "),
                            Text("FREE Delivery",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.save,color: Colors.grey),
                                  Gap(5),
                                  Text("Save for later",style: TextStyle(color: Colors.grey[700]))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.delete_outline_outlined,color: Colors.grey),
                                  Gap(5),
                                  Text("Remove",style: TextStyle(color: Colors.grey[700]))
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
  }
}