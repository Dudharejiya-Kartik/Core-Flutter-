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
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.symmetric(
                  vertical: BorderSide(
                    color: Colors.white,
                    width: 150,
                  ),
                  horizontal: BorderSide(
                    color: Colors.black,
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