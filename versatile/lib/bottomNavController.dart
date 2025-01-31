import 'package:flutter/material.dart';
import 'package:versatile/pages/home.dart';
import 'package:versatile/pages/order.dart';
import 'package:versatile/pages/profile.dart';

class Bottomnavcontroller extends StatefulWidget {
  const Bottomnavcontroller({super.key});

  @override
  State<Bottomnavcontroller> createState() => _BottomnavcontrollerState();
}

class _BottomnavcontrollerState extends State<Bottomnavcontroller> {

 int _currentIndex = 0;
  final _pages = [
   Home(),
   Order(),
   Profile(),
   
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          elevation: 5,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Order'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
           body: _pages[_currentIndex],



    );
  }
}