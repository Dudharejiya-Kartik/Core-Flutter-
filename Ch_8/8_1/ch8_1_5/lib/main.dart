import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Mashal",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.brown,
          ),
          body: Align(
            child: Container(
              height: 180,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.white12,
                border: Border.all(
                  color: Colors.white30,
                  width: 5,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.brown,
                  border: Border.symmetric(
                    vertical: BorderSide(
                      color : Colors.white,
                      width: 35,
                    ),
                    horizontal: BorderSide(
                      color: Colors.brown.shade400,
                      width: 20,
                    ),
                  ),
                ),
                alignment: Alignment(-0.3,-1.03),
                child: Text(
                  "🔥",
                  style: TextStyle(
                    fontSize: 35,
                    height: -2,
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