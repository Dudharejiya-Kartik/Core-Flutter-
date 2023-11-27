import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Flutter App"),
          centerTitle: true,
          backgroundColor: Colors.red,
          elevation: 0,
        ),
        body: Center(
          child: Text("Red and White Multimedia Education\nIs One of The Best Web Design Institute In Gujrat",
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            decorationColor: Colors.red,
            overflow: TextOverflow.ellipsis,
          ),
          ),
        ),
      ),
    )
  );
}

