import 'package:coffee_order/detail_page.dart';
import 'package:coffee_order/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Sweet &",
                  style: GoogleFonts.poppins(textStyle: titleTextStyle),
                ),
                Text(
                  "Naise Coffee",
                  style: GoogleFonts.poppins(textStyle: titleTextStyle),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Naise Coffee can change The",
                  style: GoogleFonts.poppins(textStyle: subtitleTextStyle),
                ),
                Text(
                  "atmosphere  in the morning",
                  style: GoogleFonts.poppins(textStyle: subtitleTextStyle),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset("assets/coffee.png"),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 55,
                  width: 260,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPage()),
                      );
                    },
                    child: Text(
                      "ORDER NOW",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: greenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
