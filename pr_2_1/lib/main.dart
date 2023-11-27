import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("🛍 List Of Fruits",
            style: TextStyle(
              color: Colors.white,
            ),
        ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          elevation: 5,
      ),
        body: Center(
          child: RichText(
              text: TextSpan(
                text: "🍎 Apple",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  decoration: TextDecoration.none,
                ),
                children: [
                  TextSpan(
                    text: "\n🍇 Grapes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue,
                      decoration: TextDecoration.none
                    ),
                  ),
                  TextSpan(
                    text: "\n🍒 Cherry",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                    ),
                    children: [
                      TextSpan(
                        text: "\n🍓 Strawberry",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.pinkAccent,
                          decoration: TextDecoration.none
                        ),
                      ),
                      TextSpan(
                        text: "\n🥭 Mango",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellowAccent,
                            decoration: TextDecoration.none
                        ),
                        children: [
                          TextSpan(
                            text: "\n🍍 Pineapple",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                decoration: TextDecoration.none
                            ),
                          ),
                          TextSpan(
                            text: "\n🍋 Lemon",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                                decoration: TextDecoration.none
                            ),
                            children: [
                              TextSpan(
                                text: "\n🍉 Watwermalon",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.greenAccent,
                                    decoration: TextDecoration.none
                                ),
                              ),
                              TextSpan(
                                text: "\n🥥 Coconut",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown,
                                    decoration: TextDecoration.none
                                ),
                              ),
                            ],
                          ),
                        ]
                      ),


                    ],
                  ),
                ],
              ),
          ),
        ),
        backgroundColor: Colors.white,
    ),
  ),
  );
}
