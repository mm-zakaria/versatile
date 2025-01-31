import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
  late List<Widget> pages;
  late Home HomePages;
  late Order order;
  late Profile profile;
  int currentTabIndex = 0;
  @override
  void initState() {
    HomePages = Home();
    order = Order();
    profile = Profile();
    pages = [HomePages, order, profile];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        onTap: ( int index) {
          setState(() {
            currentTabIndex = index;
          });

        },


        
        items: [
        Icon(
          Icons.home,
          color: Colors.white,
        ),
        Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.person_off_outlined,
          color: Colors.white,
        ),

      ]),
      body: pages[currentTabIndex],
    );
  }
}
