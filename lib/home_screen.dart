import 'package:flutter/material.dart';
import 'package:ui/collaap.dart';
import 'package:ui/widget.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_outlined),
        backgroundColor: Colors.blue[700],
        title: Text(
          'Dukaan Premium',
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 130,
                      decoration: BoxDecoration(color: Colors.blue[700]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120,bottom: 15),
                      child: Column(
                        children: [
                          singleText(text: 'Features'),
                          homeTile(
                              featureIcon: Icons.language_outlined,
                              featureTitle: 'Custom domain name',
                              featureSubtitle:
                                  'Get your own custom domain and build\nyour brand on the internet'),
                          homeTile(
                              featureIcon: Icons.verified_outlined,
                              featureTitle: 'Verified seller badge',
                              featureSubtitle:
                                  'Get green verified badge under your\nstore name and build trust'),
                          homeTile(
                              featureIcon: Icons.laptop_mac_sharp,
                              featureTitle: 'Dukaan for PC',
                              featureSubtitle:
                                  'Access all the exiclusive prenium features on Dukaan for PC'),
                          homeTile(
                              featureIcon: Icons.headset_mic_outlined,
                              featureTitle: 'Priority support',
                              featureSubtitle:
                                  'Get your questions resikved with our priority customer support.'),
                          seperator(),
                          singleText(text: 'What is Dukaan Premium?'),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(200),
                                  color: Colors.green),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child:const Image(
                                    image: AssetImage(
                                      'lib/images/youtube.png',
                                    ),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          seperator(),
                          singleText(text: 'Frequently asked Questions'),
                          acordion(
                            titletext:
                                'What types of buisnesses can use Dukaan\nPremium?',
                          ),
                          div(),
                          acordion(titletext: 'Whats is your refund policy?'),
                          div(),
                          acordion(
                              titletext:
                                  'Will there be an automatic charge after the\npaid trial?'),
                          div(),
                          acordion(
                              titletext: 'What payment methods do you offer?'),
                          div(),
                          acordion(
                              titletext:
                                  'What happens when my free trial ends?'),
                          div(),
                          acordion(
                              titletext:
                                  'What are the terms for the custom domain?'),
                          div(),
                          seperator(),
                          singleText(text: 'Need help? Get in touch'),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: GridView(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 223, 219, 219))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:const [
                                      Icon(
                                        Icons.messenger_outline_rounded,
                                        size: 45,
                                      ),
                                      Text(
                                        'Live Chat',
                                        style: TextStyle(fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 223, 219, 219))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.phone,
                                        size: 45,
                                      ),
                                      Text(
                                        'Phone Call',
                                        style: TextStyle(fontSize: 18),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 5,
                                      crossAxisSpacing: 20,
                                      childAspectRatio: 50 / 30),
                              shrinkWrap: true,
                            ),
                          ),
                          seperator(),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Select Domain',
                                  style: TextStyle(
                                      fontSize: 18, color: Color.fromARGB(255, 32, 139, 225)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        minimumSize: Size(200, 55)),
                                    onPressed: () {},
                                    child: Text(
                                      'Get Premium',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),

                //STACK

                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 22, top: 15),
                  child: Container(
                    height: 210,
                    width: 355,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                          offset: Offset(.2, .2),
                          color: Colors.grey.withOpacity(1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blue[700]),
                                child: Icon(
                                  Icons.shopping_bag_sharp,
                                  size: 36,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'dukaan',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 33,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 0),
                                          child: Text('®'),
                                        )
                                      ],
                                    ),
                                    Text(
                                      'PREMIUM',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.blue[700]),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Get Dukaan Premium for just\n ₹4,999/year',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'All the advanced features for scaling your\n buisness',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[500]),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
