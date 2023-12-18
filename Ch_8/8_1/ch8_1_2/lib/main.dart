import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Mission Of RNW",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            shadowColor: Colors.black87,
            centerTitle: true,
            elevation: 4,
            backgroundColor: Colors.red.shade400,
          ),
          body: Align(
            child: Container(
                height: 280,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.redAccent.shade200,
                  border: Border(
                    left: BorderSide(
                      color: Colors.red,
                      width: 20,
                    ),
                  ),
                ),
              child: Center(
                child: Text(
                    " Shaping""Skills for ""scaling higher"
                        "-RNW",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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

