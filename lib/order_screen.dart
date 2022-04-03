import 'package:flutter/material.dart';
import 'package:ui/account_screen.dart';
import 'package:ui/product_screen.dart';

import 'customer_order.dart';

class ScreenOrder extends StatelessWidget {
  const ScreenOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text("Order #1688068"),
        ),
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: ListView(
            children: [
              const CustomerDetails(),
              seperator(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1 ITEM",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.text_snippet_outlined,
                          color: Colors.blue,
                          size: 25,
                        ),
                      ),
                      Text(
                        "RECEIPT",
                        style: TextStyle(fontSize: 17, color: Colors.blue),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(children: [
                  Container(
                      width: 80,
                      height: 85.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                          image: const DecorationImage(
                            image: AssetImage("lib/images/e.webp"),
                          ))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore| Men| Navy Blue",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 8,),
                        const Text(
                          "1piece \nsize: XL",
                          style: const TextStyle(fontSize: 14,color: Color.fromARGB(255, 129, 127, 127)),
                        ),
                        Row(
                          
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 161, 209, 231),
                                    border: Border.all(color: Colors.blue)),
                                child: const Center(
                                    child: const Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 58, 124, 179)),
                                )),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "x ₹499",
                                style: const TextStyle(fontSize: 18),
                              ),
                              SizedBox(width: 118,),
                              Text(
                                "₹499",
                                style: TextStyle(fontSize: 18),
                              )
                            ])
                      ],
                    ),
                  ),
                ]),
              ),
              seperator(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      normalText("Item Total", Colors.black),
                      textSeperator(),
                      normalText("Delivery", Colors.black),
                      textSeperator(),
                      boldText("Grand Total")
                    ],
                  ),
                  Column(
                    children: [
                      normalText("₹ 499", Colors.black),
                      textSeperator(),
                      normalText("FREE", Colors.green),
                      textSeperator(),
                      boldText("₹ 499")
                    ],
                  )
                ],
              ),
              seperator(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      normalText("CUSTOMER DETAILS", Colors.grey),
                      
                      textSeperator(),
                      textSeperator(),
                      boldText("Deepa"),
                      normalText("+91-9947380272", Colors.grey)
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: const Icon(
                              Icons.share,
                              color: Colors.blue,
                            ),
                          ),
                          normalText("SHARE", Colors.blue),
                        ],
                      ),
                      textSeperator(),
                      textSeperator(),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20  ),
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  child: const Icon(
                                    Icons.call,
                                    color: Colors.blue,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Colors.blue))),
                            ),
                            const Icon(
                              Icons.whatsapp,
                              color: Colors.green,
                              size: 43,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              textSeperator(),
              textSeperator(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldText("Address"),
                      normalText(
                          "ID 1101,charteerd baverly\nhills,Subrahmanyapura P.O",
                          Colors.black),
                      textSeperator(),
                    ],
                  ),
                ],
              ),
              textSeperator(),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldText("City"),
                      textSeperator(),
                      normalText("Bangalore", Colors.black),
                      textSeperator(),
                      
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldText("Pincode"),
                      textSeperator(),
                      normalText("560606", Colors.black),
                      textSeperator(),
                    ],
                  )
                ],
              ),
              textSeperator(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldText("payment"),
                      textSeperator(),
                      normalText("Online", Colors.black),
                      textSeperator(),
                    ],
                  ),
                  Column(
                    children: [
                      textSeperator(),
                      textSeperator(),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "PAID",
                          style: TextStyle(color: Color.fromARGB(255, 25, 232, 31)),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 191, 228, 210),
                            minimumSize: const Size(50, 30),
                            elevation: 0),
                      )
                    ],
                  )
                ],
              ),
              seperator(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  normalText("ADDITIONAL INFORMATION", Colors.grey),
                  textSeperator(),
                  textSeperator(),
                  boldText("State"),
                  normalText("Karnataka", Colors.black),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textSeperator(),
                  boldText("Email"),
                  normalText("greeniceaqua@mail.com", Colors.black),
                ],
              ),
              textSeperator(),
              textSeperator(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.blue[800],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    minimumSize: const Size(900, 50),
                    side: const BorderSide(color: Colors.blue)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScreenAccount()),
                  );
                },
                child: const Text(
                  'Share reciept',
                  style: const TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
