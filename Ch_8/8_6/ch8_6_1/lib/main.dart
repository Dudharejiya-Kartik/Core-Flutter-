import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: stackApp(),
    ),
  );
}

class stackApp extends StatefulWidget {
  const stackApp({super.key});

  @override
  State<stackApp> createState() => _stackAppState();
}

class _stackAppState extends State<stackApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stack App",
          style: TextStyle(
            fontSize: h * 0.035,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Container(
              height: h * 0.17,
              width: w * 0.37,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment(-0.7, -0.8),
              child: Text(
                "Purple",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: h * 0.03,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 50,
              child: Container(
                height: h * 0.17,
                width: w * 0.37,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment(-0.7, -0.8),
                child: Text(
                  "Indigo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: h * 0.03,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 60,
              top: 100,
              child: Container(
                height: h * 0.17,
                width: w * 0.37,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment(-0.7, -0.8),
                child: Text(
                  "LightBlue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: h * 0.03,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 90,
              top: 150,
              child: Container(
                height: h * 0.17,
                width: w * 0.37,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment(-0.7, -0.8),
                child: Text(
                  "Green",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: h * 0.03,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 120,
              top: 200,
              child: Container(
                height: h * 0.17,
                width: w * 0.37,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment(-0.7, -0.8),
                child: Text(
                  "Amber",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: h * 0.03,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 150,
              top: 250,
              child: Container(
                height: h * 0.17,
                width: w * 0.37,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment(-0.7, -0.8),
                child: Text(
                  "Orange",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: h * 0.03,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 180,
              top: 300,
              child: Container(
                height: h * 0.17,
                width: w * 0.37,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment(-0.7, -0.8),
                child: Text(
                  "RedAccent",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: h * 0.03,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(child: Container(),),
          ],
        ),
      ),
    );
  }
}