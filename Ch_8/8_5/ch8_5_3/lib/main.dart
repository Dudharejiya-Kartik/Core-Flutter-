import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SPLITTER(),
    ),
  );
}

class SPLITTER extends StatefulWidget {
  const SPLITTER({super.key});

  @override
  State<SPLITTER> createState() => _SPLITTERState();
}

class _SPLITTERState extends State<SPLITTER> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SPLITTER",
          style: TextStyle(
            color: Colors.white,
            fontSize: h * 0.035,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color(0xffff9800),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: h * 0.095,
                        width: w * double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffc107),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: h * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.025,
                      ),
                      Container(
                        height: h * 0.095,
                        width: w * double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffc107),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontSize: h * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.025,
                      ),
                      Container(
                        height: h * 0.095,
                        width: w * double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffc107),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "3",
                          style: TextStyle(
                            fontSize: h * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.025,
                      ),
                      Container(
                        height: h * 0.095,
                        width: w * double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffc107),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "4",
                          style: TextStyle(
                            fontSize: h * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.025,
                      ),
                      Container(
                        height: h * 0.095,
                        width: w * double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffc107),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "5",
                          style: TextStyle(
                            fontSize: h * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.025,
                      ),
                      Container(
                        height: h * 0.095,
                        width: w * double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffc107),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "6",
                          style: TextStyle(
                            fontSize: h * 0.045,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xffff5722),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: h * double.infinity,
                        width: w * 0.2,
                        decoration: BoxDecoration(
                          color: Color(0xffffc107),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "4",
                          style: TextStyle(
                            fontSize: h * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.025,
                      ),
                      Container(
                        height: h * double.infinity,
                        width: w * 0.2,
                        decoration: BoxDecoration(
                          color: Color(0xffffc107),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "5",
                          style: TextStyle(
                            fontSize: h * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.025,
                      ),
                      Container(
                        height: h * double.infinity,
                        width: w * 0.2,
                        decoration: BoxDecoration(
                          color: Color(0xffffc107),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "6",
                          style: TextStyle(
                            fontSize: h * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.025,
                      ),
                      Container(
                        height: h * double.infinity,
                        width: w * 0.2,
                        decoration: BoxDecoration(
                          color: Color(0xffffc107),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "7",
                          style: TextStyle(
                            fontSize: h * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.025,
                      ),
                      Container(
                        height: h * double.infinity,
                        width: w * 0.2,
                        decoration: BoxDecoration(
                          color: Color(0xffffc107),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "8",
                          style: TextStyle(
                            fontSize: h * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.025,
                      ),
                      Container(
                        height: h * double.infinity,
                        width: w * 0.2,
                        decoration: BoxDecoration(
                          color: Color(0xffffc107),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "9",
                          style: TextStyle(
                            fontSize: h * 0.045,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/*
child: Column(
              children: [
                Container(
                  height: h * 0.095,
                  width: w * double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffc107),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "1",
                    style: TextStyle(
                      fontSize: h * 0.045,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.025,
                ),
                Container(
                  height: h * 0.095,
                  width: w * double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffc107),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: h * 0.045,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.025,
                ),
                Container(
                  height: h * 0.095,
                  width: w * double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffc107),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "3",
                    style: TextStyle(
                      fontSize: h * 0.045,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.025,
                ),
                Container(
                  height: h * 0.095,
                  width: w * double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffc107),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "4",
                    style: TextStyle(
                      fontSize: h * 0.045,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.025,
                ),
                Container(
                  height: h * 0.095,
                  width: w * double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffc107),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "5",
                    style: TextStyle(
                      fontSize: h * 0.045,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.025,
                ),
                Container(
                  height: h * 0.095,
                  width: w * double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffc107),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "6",
                    style: TextStyle(
                      fontSize: h * 0.045,
                    ),
                  ),
                ),
              ],
            ),
 */