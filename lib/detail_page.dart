import 'package:coffee_order/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Image.asset(
                      "assets/btn_back.png",
                      height: 16,
                      width: 21,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Image.asset(
                    "assets/btn_detail.png",
                    height: 6,
                    width: 22,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Image.asset(
                "assets/coffee2.png",
                width: 192,
                height: 243,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Caramel Macchiato",
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "We cannot guarantee that any unpackaged",
              ),
              Text(
                "products served in our stores are allergen-free",
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "SIZE",
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("S"),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("M"),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("L"),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "COMBO",
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/food.png",
                      ),
                      Column(
                        children: [
                          Text("CROISSANT"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
