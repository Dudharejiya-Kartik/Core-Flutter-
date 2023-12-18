import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Launch Button",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white
            ),),
            centerTitle: true,
            backgroundColor: Colors.green,
          ),
          body: Align(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 10,
                    color: Colors.green,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                "GO",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white
                ),

              ),
            ),
          ),
          backgroundColor: Colors.black,
        ),
      ),
    ),
  );
}

