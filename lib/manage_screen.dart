import 'package:flutter/material.dart';
import 'package:ui/widget.dart';

class ScreenManage extends StatelessWidget {
  const ScreenManage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Manage Store',
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView(
            children: [
              gridManage(
                  icon: Icons.campaign_outlined,
                  bgcolor: Colors.orange[800],
                  text: 'Marketing\nDesigns'),
              gridManage(
                  icon: Icons.currency_rupee_rounded,
                  bgcolor: Colors.green[400],
                  text: 'Online\nPayment'),
              gridManage(
                  icon: Icons.brightness_low_outlined,
                  bgcolor: Colors.orange[300],
                  text: 'Discount\nCoupons'),
              gridManage(
                  icon: Icons.people_alt_outlined,
                  bgcolor: Colors.teal[400],
                  text: 'My\nCustomers'),
              gridManage(
                  icon: Icons.qr_code_2_outlined,
                  bgcolor: Colors.grey[600],
                  text: 'Store QR\nCode'),
              gridManage(
                  icon: Icons.money,
                  bgcolor: Color.fromARGB(200, 88, 4, 167),
                  text: 'Extra\nCharges'),
              gridManage(
                  icon: Icons.format_align_left,
                  bgcolor: Color.fromARGB(146, 187, 13, 71),
                  text: 'Order\nForm',
                  view: true),
            ],
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 45 / 30),
          ),
        ),
      ),
    );
  }
}
