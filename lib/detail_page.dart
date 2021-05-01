import 'package:coffee_order/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        body: RefreshIndicator(
          onRefresh: () async => Future.delayed(
            Duration(seconds: 1),
          ),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Center(
                    child: Column(
                      children: [
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
                          style: GoogleFonts.poppins(textStyle: titleTextStyle),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "We cannot guarantee that any unpackaged",
                          style:
                              GoogleFonts.poppins(textStyle: subtitleTextStyle)
                                  .copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "products served in our stores are allergen-free",
                          style:
                              GoogleFonts.poppins(textStyle: subtitleTextStyle)
                                  .copyWith(fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "SIZE",
                    style: GoogleFonts.poppins(textStyle: blackTextStyle),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 85,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "S",
                            style:
                                GoogleFonts.poppins(textStyle: titleTextStyle)
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: greenColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        width: 85,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "M",
                            style:
                                GoogleFonts.poppins(textStyle: titleTextStyle)
                                    .copyWith(fontWeight: FontWeight.w400),
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: greenColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        width: 85,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "L",
                            style:
                                GoogleFonts.poppins(textStyle: titleTextStyle)
                                    .copyWith(fontWeight: FontWeight.w400),
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: greenColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "COMBO",
                    style: GoogleFonts.poppins(textStyle: blackTextStyle),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: greenColor.withOpacity(0.10),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(0, 2)),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/food.png",
                            width: 48,
                            height: 27,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CROISSANT",
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Image.asset(
                                "assets/ratings.png",
                                width: 100,
                                height: 18,
                              ),
                            ],
                          ),
                          Spacer(),
                          Image.asset(
                            "assets/btn_add.png",
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Center(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/order_pack.png",
                          height: 57,
                          width: 67,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        SizedBox(
                          height: 55,
                          width: 220,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "ADD TO BAG",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: greenColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
