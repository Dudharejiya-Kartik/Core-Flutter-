import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BOLT(),
    ),
  );
}

class BOLT extends StatefulWidget {
  const BOLT({super.key});

  @override
  State<BOLT> createState() => _BOLTState();
}

class _BOLTState extends State<BOLT> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "BOLT",
            style: TextStyle(
              color: Colors.white,
              fontSize: h * 0.033,
              fontWeight: FontWeight.w400,
              letterSpacing: w * 0.03,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: h * 0.91,
                    width: w * 0.37,
                    color: Color(0xffffc107),
                  ),
                ],
              ),
            ),
            Text(
              "⚡",
              style: TextStyle(
                fontSize: h * 0.09,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: h * 0.91,
                    width: w * 0.37,
                    color: Color(0xffffc107),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}