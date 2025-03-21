import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          "My Orders",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  height: 90,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            hintText: "Search your order here",
                            prefixIcon: const Icon(Icons.search_outlined),
                          ),
                        ),
                      ),
                      const Gap(10),
                      const Icon(Icons.filter_list, size: 28),
                      Gap(3),
                      const Text(
                        "Filters",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Gap(4),
          contain(
            productimg1:
                "https://rukminim2.flixcart.com/image/312/312/xif0q/mobile/j/e/d/c61-rmx3933-realme-original-imah28xeqdygzshc.jpeg?q=70",
            productname1: "realme C61 (Safari Green, 128 GB)",
            onegap: 20,
            productimg2:
                "https://rukminim2.flixcart.com/image/240/240/kz1lle80/smartwatch/m/f/q/-original-imagb54tb6fpurze.jpeg?q=60",
            productname2: "Noise Smartwatches",
            twogap: 65,
          ),
          const Gap(4),
          contain(
            productimg1:
                "https://rukminim2.flixcart.com/image/312/312/xif0q/mobile/e/o/w/-original-imagzcfjjbheykct.jpeg?q=70",
            productname1: "POCO C61 (Diamond Black, 64 GB)",
            onegap: 20,
            productimg2:
                "https://rukminim2.flixcart.com/image/300/300/k0vbgy80pkrrdj/headphone/6/b/9/boat-bassheads-900-super-extra-bass-original-imafg96ydu4getz7.jpeg?q=90",
            productname2: "boAt BassHeads 900 Wired",
            twogap: 65,
          ),
          const Gap(4),
          contain(
            productimg1:
                "https://rukminim2.flixcart.com/image/612/612/xif0q/shoe/g/g/l/4-a-h-a-girl-shoe-2022-6-35-pennen-black-original-imah5yxzdkjumdq4.jpeg?q=70",
            productname1: "Sneakers For Men",
            onegap: 55,
            productimg2:
                "https://rukminim2.flixcart.com/image/312/312/xif0q/mobile/8/w/5/-original-imah4jyfwr3bfjbg.jpeg?q=70",
            productname2: "Apple iPhone 16 (Black, 128 GB)",
            twogap: 25,
          ),
        ],
      ),
    );
  }

  Widget contain({
    required String productimg1,
    required String productname1,
    required double onegap,
    required String productimg2,
    required String productname2,
    required double twogap,
  }) {
    return Container(
      width: double.infinity,
      height: 255, 
      color: Colors.white,
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                productimg1,
                width: 110,
                height: 110,
              ),
              Gap(2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Delivered on March 2, 2024",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    productname1,
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Gap(onegap),
              const Icon(Icons.arrow_forward_ios)
            ],
          ),
          const Gap(10),
          Row(
            children: [
              Image.network(
                productimg2,
                width: 110,
                height: 110,
              ),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Delivered on March 2, 2024",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    productname2,
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Gap(twogap),
              const Icon(Icons.arrow_forward_ios)
            ],
          ),
        ],
      ),
    );
  }
}
