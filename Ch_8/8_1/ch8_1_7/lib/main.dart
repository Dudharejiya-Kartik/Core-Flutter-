import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "3D Cube",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
          ),
          body: Align(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              alignment: Alignment.center,
             child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                ),

              ),


            ),
          ),
        ),
      ),
    ),
  );
}