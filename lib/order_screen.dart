import 'package:flutter/material.dart';
import 'package:ui/widget.dart';

class ScreenOrder extends StatelessWidget {
  const ScreenOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order #3544667',
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
        leading: Icon(
          Icons.arrow_back,
          size: 35,
        ),
      ),
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Text('Jul-02 02:06 PM',style: TextStyle(fontSize: 18),),
                Icon(Icons.circle),
                Text('Delivered'),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
