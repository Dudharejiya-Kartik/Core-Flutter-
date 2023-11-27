import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title: Text("My RNW",
            style: TextStyle(
              color: Colors.white
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
          elevation: 0,
        ),
        body: Center(
          child: RichText(
              text: TextSpan(
                text: "Red & White",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.red,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 4,
                  decoration: TextDecoration.underline,
                ),
                children: [
                  TextSpan(
                    text: "\n  Multimedia Education",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  TextSpan(
                    text: "\nShaping",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.red,
                      decoration: TextDecoration.none,
                    ),
                    children: [
                      TextSpan(
                        text: '"Skills"',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.red,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text: " For",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.red,
                          decoration: TextDecoration.none,
                        ),
                        children: [
                          TextSpan(
                        text: '"Scalling"',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.red,
                          decoration: TextDecoration.none,
                        ),
                          ),
                          TextSpan(
                            text: " higher..!!",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ],

              ),
          ),
        ),
      ),
    ),
  );
}

