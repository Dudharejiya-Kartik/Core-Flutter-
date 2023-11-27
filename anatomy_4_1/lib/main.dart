import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        top: true,
        child: Text("\nHello\n\n\n\n\nDart\n\n\n\n\nFlutter",
          textAlign: TextAlign.center,
        ),
        
      ),
    ),
  );
}