import 'package:flutter/material.dart';

void main() {
  String name= "Red & White";

  Color appBarColor=Colors.yellowAccent;
  Color textColor=Colors.red;
  Color bgColor=Colors.black;

  double sizeFont=40;

  TextStyle textStyle=TextStyle(
    fontSize: sizeFont,
    fontWeight: FontWeight.bold,
    color: textColor,
    decoration: TextDecoration.combine([
      TextDecoration.underline,
    ]),
    decorationStyle: TextDecorationStyle.double,
    decorationColor: Colors.yellow,
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu,color: Colors.black),
          title: Text("Flutter App",
              style: TextStyle(
                color: Colors.black,
          ),
          ),
          centerTitle: true,
          backgroundColor: appBarColor,
        ),
        body: SafeArea(
          child: Center(
            child: Text(name,
              style: textStyle,

            ),
          ),
        ),
        backgroundColor: bgColor,
      ),
    )
  );
}


