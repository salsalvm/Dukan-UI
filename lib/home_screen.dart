import 'package:flutter/material.dart';
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
                      padding: const EdgeInsets.symmetric(vertical: 120),
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
                          singleText(text: 'Wat is Dukaan Premium?'),

                        ],
                      ),
                    ),
                  ],
                ),

                //STACK

                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 23, top: 15),
                  child: Container(
                    height: 210,
                    width: 350,
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
