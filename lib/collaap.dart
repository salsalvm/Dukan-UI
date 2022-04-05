//accordation

import 'package:getwidget/getwidget.dart';

import 'package:flutter/material.dart';
import 'package:ui/widget.dart';

class acordion extends StatelessWidget {
  final titletext;
  acordion({
    required this.titletext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GFAccordion(
          title: titletext,
         
          textStyle: TextStyle(fontSize: 17),
          content:
              'Dukaan caters to a wide variety of sellers.Be it a small groccery store or a big legacy brand - anyone who wants tp sell their products/services online - Dukaan is the perfect platform for you. ',
          collapsedIcon: Icon(Icons.add),
          expandedIcon: Icon(Icons.minimize),
          expandedTitleBackgroundColor: Colors.white,
        ),
        div()
      ],
    );
  }
}
