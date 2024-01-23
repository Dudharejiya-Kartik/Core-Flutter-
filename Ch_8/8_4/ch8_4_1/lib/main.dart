import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calculatorApp(),
    ),
  );
}

class calculatorApp extends StatefulWidget {
   calculatorApp({super.key});

  @override
  State<calculatorApp> createState() => _calculatorAppState();
}

class _calculatorAppState extends State<calculatorApp> {
  late int sum = 0;
  @override
  void initstate()
  {
    sum = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            size: 25,
            color: Colors.white,
          ),
          title: Text(
            "Calc",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          backgroundColor: Color(0xff54759e),
          elevation: 15,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Container(
                child: Text(
                  "$sum",
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                children: [
                  GestureDetector(
                    onTap:()
                    {
                      setState(() {
                        sum-=2;
                        log("Tapped On -2");
                      });
                    },
                    child: Container(
                      alignment: const Alignment(-0.5,0),
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff54759e),
                      ),
                      child: const Center(
                        child: Text(
                          "-2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  GestureDetector(
                    onTap:()
                    {
                      setState(() {
                        sum+=2;
                        log("Tapped On +2");
                      });
                    },
                    child: Container(
                      alignment: const Alignment(-0.5,0),
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff54759e),
                      ),
                      child: const Center(
                        child: Text(
                          "+2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap:()
                        {
                          setState(() {
                            sum-=4;
                            log("Tapped On -4");
                          });
                        },
                        child: Container(
                          alignment: const Alignment(-0.5,0),
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xff54759e),
                          ),
                          child: const Center(
                            child: Text(
                              "-4",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      GestureDetector(
                        onTap:()
                        {
                          setState(() {
                            sum+=4;
                            log("Tapped On +4");
                          });
                        },
                        child: Container(
                          alignment: const Alignment(-0.5,0),
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xff54759e),
                          ),
                          child: const Center(
                            child: Text(
                              "+4",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 125),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap:()
                        {
                          setState(() {
                            sum=0;
                            log("Tapped On Clear");
                          });
                        },
                        child: Container(
                          alignment: const Alignment(-0.5,0),
                          height: 70,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xff54759e),
                          ),
                          child: const Center(
                            child: Text(
                              "Clear",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.grey.shade300,
      ),
    );
  }
}