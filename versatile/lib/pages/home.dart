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
                Text("Categories",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                Text("See more",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Container(
                  height: 180,
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                      child: Text(
                    "All ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                Expanded(
                  child: Container(
                    height: 180,
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategoriesTile(image: categories[index]);
                        }),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("All Products",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                Text("See more",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              height: 200,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(color: Colors.white , borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      children: [
                        Image.asset("images/laptop2.png",
                            height: 130, width: 130, fit: BoxFit.cover),
                        Text(
                          "Laptop",
                          style: Appwidget.boldText(),
                        ),
                        Row(
                          children: [
                            Text("\$100",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 40.0,
                            ),
                            Container(
                                decoration: BoxDecoration(color: Colors.amber),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),),
                          ],
                        ),
                      ],
                    ),
                  ),



                   Container(
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(color: Colors.white , borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      children: [
                        Image.asset("images/watch2.png",
                            height: 130, width: 130, fit: BoxFit.cover),
                        Text(
                          "Smart Watch",
                          style: Appwidget.boldText(),
                        ),
                        Row(
                          children: [
                            Text("\$250",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 40.0,
                            ),
                            Container(
                                decoration: BoxDecoration(color: Colors.amber),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(color: Colors.white , borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      children: [
                        Image.asset("images/headphone2.png",
                            height: 130, width: 130, fit: BoxFit.cover),
                        Text(
                          "Wired Headphone",
                          style: Appwidget.boldText(),
                        ),
                        Row(
                          children: [
                            Text("\$99",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 40.0,
                            ),
                            Container(
                                decoration: BoxDecoration(color: Colors.amber),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10.0),
          Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}
