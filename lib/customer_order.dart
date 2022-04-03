// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Jul-02 ,02:06 PM',
          style: TextStyle(fontSize: 18),
        ),
        Row(
         
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                Icons.circle,
                color: Colors.blue[700],size: 18,
              ),
            ),
            Text(
              'Delivered',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ],
    );
    
  }
}

Widget seperator() {
  return Padding(
    padding: const EdgeInsets.only(top: 12,bottom: 12),
    child: Divider(
      thickness: 1.5,
    ),
  );
}

Widget boldText(boldedword) {
  return Text(
    boldedword,
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
  );
}

Widget normalText(normalword, normaltextcolor) {
  return Padding(
    padding: const EdgeInsets.only(top: 5),
    child: Text(
      normalword,
      style: TextStyle(fontSize: 18, color: normaltextcolor),
    ),
  );
}

Widget shadedText(shadedword) {
  return Text(shadedword);
}

Widget textSeperator() {
  return SizedBox(
    height: 10,
  );
}
