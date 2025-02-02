import 'package:flutter/material.dart';
import 'package:versatile/widget/support.dart';

class ProductsDetails extends StatefulWidget {
  const ProductsDetails({super.key});

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfef5f1),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    margin: EdgeInsets.only(left: 20.0),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.arrow_back_ios_new_outlined)),
              ),
              Center(child: Image.asset("images/headphone2.png", height: 400)),
            ]),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Headphone", style: Appwidget.boldText()),
                        Text("\$300",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      "Details",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text("This wired headphones provide a seamless audio experience with high-fidelity sound and zero latency, making them ideal for music lovers and gamers. Equipped with powerful dynamic drivers, they deliver deep bass, clear mids, and crisp highs for an immersive sound profile. The ergonomic over-ear design with padded ear cushions ensures comfort during long listening sessions. A durable, tangle-free cable enhances longevity while ensuring uninterrupted connectivity. The 3.5mm audio jack offers wide compatibility with smartphones, laptops, gaming consoles, and audio devices. With passive noise isolation, these headphones block out external noise, allowing you to enjoy pure, high-quality sound anywhere"),
                        SizedBox(height: 70.0),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
