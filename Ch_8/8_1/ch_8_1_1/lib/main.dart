import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("My App",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            shadowColor: Colors.black87,
            centerTitle: true,
            elevation: 4,
            backgroundColor: Colors.green.shade400,
          ),
          body: Align(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.green.shade800,
              ),
              alignment:Alignment.center,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.lightGreen.shade400,
                ),
                alignment: Alignment(0,0),
                child: Text("oooo",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 150,
                    fontWeight: FontWeight.normal,
                    letterSpacing: -45,
                  ),
                ),
              )
            ),
          ),
        ),
      ),

    ),
  );
}

