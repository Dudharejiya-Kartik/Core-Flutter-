import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: THE_WALL(),
    ),
  );
}
class THE_WALL extends StatefulWidget {
  const THE_WALL({super.key});

  @override
  State<THE_WALL> createState() => _THE_WALLState();
}

class _THE_WALLState extends State<THE_WALL> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "THE WALL",
          style: TextStyle(
            fontSize: h * 0.035,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: h * 0.02,
          ),
          Row(
            children: [
              Container(
                height: h * 0.09,
                width: w * 0.3,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.4,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.25,
                color: Color(0xff5d4037),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Row(
            children: [
              Container(
                height: h * 0.09,
                width: w * 0.35,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.25,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.35,
                color: Color(0xff5d4037),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Row(
            children: [
              Container(
                height: h * 0.09,
                width: w * 0.3,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.4,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.25,
                color: Color(0xff5d4037),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Row(
            children: [
              Container(
                height: h * 0.09,
                width: w * 0.35,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.25,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.35,
                color: Color(0xff5d4037),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Row(
            children: [
              Container(
                height: h * 0.09,
                width: w * 0.3,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.4,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.25,
                color: Color(0xff5d4037),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Row(
            children: [
              Container(
                height: h * 0.09,
                width: w * 0.35,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.25,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.35,
                color: Color(0xff5d4037),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Row(
            children: [
              Container(
                height: h * 0.09,
                width: w * 0.3,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.4,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.25,
                color: Color(0xff5d4037),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Row(
            children: [
              Container(
                height: h * 0.09,
                width: w * 0.35,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.25,
                color: Color(0xff5d4037),
              ),
              SizedBox(
                width: w * 0.025,
              ),
              Container(
                height: h * 0.09,
                width: w * 0.35,
                color: Color(0xff5d4037),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.02,
          ),
        ],
      ),
    );
  }
}