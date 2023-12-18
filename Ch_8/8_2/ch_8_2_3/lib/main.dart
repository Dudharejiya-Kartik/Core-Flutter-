import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("A Shadow Button",style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),),
            centerTitle: true,
            backgroundColor: Colors.cyan.shade500,
          ),
          body: Align(
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 10,
                    color: Colors.cyan,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                "Tap",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    ),
  );
}
