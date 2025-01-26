import 'package:flutter/material.dart';
import 'package:versatile/widget/support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey, Zakaria",
              style: Appwidget.boldText(),
            ),
            Text(
              "Good Afternoon",
              style: Appwidget.lightText(),
            )
          ],
        ),
      ),
    );
  }
}
