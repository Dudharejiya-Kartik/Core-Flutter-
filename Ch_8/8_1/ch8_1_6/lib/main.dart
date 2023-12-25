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
              "Letter Cover",
              style: TextStyle(
                fontSize:20,
                color: Colors.white
              ),
            ),
            backgroundColor: Colors.green,
          ),
          body: Align(
            child: Container(
              height: 200,
              width: 200,
             decoration: BoxDecoration(
               color: Colors.greenAccent,
               border: Border.symmetric(
                 vertical: BorderSide(
                   color: Colors.green,
                   width: 150,
                 ),
                 horizontal: BorderSide(
                   color: Colors.greenAccent,
                   width: 150,
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