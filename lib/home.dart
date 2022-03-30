import 'package:flutter/material.dart';
import 'package:ui/account_screen.dart';
import 'package:ui/home_screen.dart';
import 'package:ui/manage_screen.dart';
import 'package:ui/order_screen.dart';
import 'package:ui/payment_screen.dart';
import 'package:ui/product_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<Home> {
  int _currentSelectedIndex = 0;

  final _pages = [
  
    ScreenHome(),
    ScreenOrder(),
    ScreenProduct(),
    ScreenManage(),
    ScreenPayment(),
    ScreenAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _pages[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        currentIndex: _currentSelectedIndex,
        onTap: (newIndex) {
          setState(() {
            _currentSelectedIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.currency_rupee), label: 'Order'),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Product'),
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: 'Manage'),
          BottomNavigationBarItem(icon: Icon(Icons.payment),label: 'Payment'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
