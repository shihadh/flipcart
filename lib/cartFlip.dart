import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Cartflip extends StatefulWidget {
  const Cartflip({super.key});

  @override
  State<Cartflip> createState() => _CartflipState();
}

class _CartflipState extends State<Cartflip> {
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
                images: "https://rukminim2.flixcart.com/image/612/612/xif0q/t-shirt/9/s/5/m-askpqrgpk76818-allen-solly-original-imah8zzjyryrddft.jpeg?q=70",
                productName: "Men Solid Polo Neck Cotton Grey T-Shirt",
                productDes: "Size: S",
                oldPrize: "₹1,499 ",
                newPrize: "₹869 ",
              ),
              Gap(15),
              cartCad(
            images: "https://rukminim2.flixcart.com/image/612/612/xif0q/sunglass/a/b/i/the-spectacle-has-stylish-black-round-frames-with-frame-and-original-imagnzfq7tgderht.jpeg?q=70",
            productName: "Riding Glasses, UV Protection Sunglasses",
            productDes: "EBRACOLLECTION",
            oldPrize: "₹999 ",
            newPrize: "₹147 ",
          ),
          Gap(15),
              cartCad(
            images: "https://rukminim2.flixcart.com/image/612/612/xif0q/jacket/t/g/3/l-no-full-sleeves-cotton-jacket-for-men-alfaq-original-imagx9rxhqq7qzbw.jpeg?q=70",
            productName: "Men Graphic Print Bomber Jacket",
            productDes: "Alfaq",
            oldPrize: "₹2,599 ",
            newPrize: "₹1,339 ",
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
                          Text("₹2,200",style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough,fontSize: 15),),
                          Row(
                            children: [
                              Text("2,000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                                  Text("60% off ",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold)),
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
                            Text("Deliverd by thu march 9 | "),
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