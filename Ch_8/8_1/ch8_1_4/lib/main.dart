import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Mix-Up",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          body: Align(
            child: Container(
              height: 400,
              width: 500,
              color: Colors.blue,
              alignment: Alignment.bottomRight,
              child: Container(
                height: 350,
                width: 400,
                color: Colors.yellowAccent,
                alignment: Alignment.bottomRight,
              child: Container(
                height: 300,
                width: 350,
                color: Colors.pink,
                alignment: Alignment.topLeft,
              child: Container(
                height: 250,
                width: 300,
                color: Colors.orange,
                alignment: Alignment.topLeft,
              child: Container(
                height: 200,
                width: 250,
                color: Colors.green,
                alignment: Alignment.center,
              child: Container(
                height: 150,
                width: 200,
                color: Colors.blue,
                alignment: Alignment.center,
               ),
               ),
              ),
            ),
          ),
        ),
      ),
    ),
      ),

  ),
  );
}