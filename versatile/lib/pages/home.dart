import 'package:flutter/material.dart';
import 'package:versatile/widget/support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = [
    "images/headphone_icon.png",
    "images/laptop.png",
    "images/watch.png",
    "images/TV.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey, Zakaria",
                      style: Appwidget.boldText(),
                    ),
                    Text(
                      "Good Afternoon",
                      style: Appwidget.lightText(),
                    ),
                  ],
                ),
                Image.asset(
                  "images/boy.jpg",
                  height: 90,
                  width: 80,
                  fit: BoxFit.cover,
                )
              ],
            ),
            SizedBox(height: 30.0),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search here",
                    hintStyle: Appwidget.lightText(),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("products",
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                Text("see more",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              
              margin: EdgeInsets.only(left: 20.0),
            
              height: 130,
              child: ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoriesTile(image: categories[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesTile extends StatelessWidget {
  String image;
  CategoriesTile({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
       borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10.0),
          Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}
