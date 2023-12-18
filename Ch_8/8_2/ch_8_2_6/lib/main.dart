import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Watch",style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),),
            backgroundColor: Color(0xff26a0da),
          ),
          body: Align(
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors:[
                    Color(0xff77A1D3),
                    Color(0xff79CBCA)
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          backgroundColor: Color(0xff77A1D3),
        ),
      ),
    ),
  );
}
