import 'package:flutter/material.dart';
import 'package:ui/list.dart';
import 'package:ui/widget.dart';

class ScreenPayment extends StatelessWidget {
  const ScreenPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payments',
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: const [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.info_outline_rounded),
          ),
        ],
      ),

      //container
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: Color.fromARGB(255, 223, 221, 221),
                      ),
                    ),
                    child: containerView(
                      title: 'Transaction Limit',
                      subTitle:
                          'A free limit up to which you will recieve\nthe online payment directly in your bank.',
                      value: '36668 left out of ₹50,000',
                    ),
                  ),

                  //method
                  paymentView(
                    method: 'Default Method',
                    paymentType: 'Online Payment',
                    icon: Icons.arrow_forward_ios,
                  ),
                  paymentView(
                    method: 'Payment Profaile',
                    paymentType: 'Bank Account',
                    icon: Icons.arrow_forward_ios,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  paymentView(
                    method: 'Payment Overview',
                    paymentType: 'Life Time',
                    icon: Icons.expand_more,
                  ),

                  //grid
                  GridView(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    children: [
                      gridAmount(
                          text: 'AMOUNT ON HOLD',
                          amount: '₹0',
                          color: Colors.orange[700]),
                      gridAmount(
                          text: 'AMOUNT RECEIVED',
                          amount: '₹13,332',
                          color: Color.fromARGB(255, 17, 224, 24))
                    ],
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            childAspectRatio: 42 / 22),
                  ),
//text
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transactions',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  //button
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buttons(
                          button: 'On Hold',
                          color: Colors.grey[400],
                          size: Size(100, 35)),
                      buttons(
                          button: 'Payouts(15)',
                          color: Colors.blue[800],
                          size: Size(120, 35)),
                      buttons(
                          button: 'Refunds',
                          color: Colors.grey[400],
                          size: Size(100, 35))
                    ],
                  ),
//list
                  ListView.separated(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            listItems(
                              image: images[index],
                              title: 'Order #${index * 13 + 3544667}',
                              range: range[index],
                              price: '₹${index * 55.0 + 499}',
                              lowerText:
                                  '₹${index * 56 + 499} depositted to ${index * 5867 + 58860200000015}',
                            ),
                          ],
                        );
                      }),
                      separatorBuilder: (ctx, intex) {
                        return Divider(
                          thickness: 1.5,
                        );
                      },
                      itemCount: 10)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
