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
        body: Column(
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
            ),
            SizedBox(
              height: 10,
            ),
            Text("Naise Coffee can change The"),
            Text("atmosphere  in the morning"),
            SizedBox(
              height: 50,
            ),
            Image.asset("assets/coffee.png"),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(onPressed: () {}, child: Text("ORDER NOW"))
          ],
        ),
      ),
    );
  }
}
