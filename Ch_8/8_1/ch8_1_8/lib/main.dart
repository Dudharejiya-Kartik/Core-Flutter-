import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
          ),
          body: const Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 200,
                  backgroundColor: Colors.yellow,
                  child :CircleAvatar(
                    radius: 160,
                    backgroundColor: Colors.white,
                    child : CircleAvatar(
                      radius: 150,
                      backgroundColor: Colors.yellow,
                      child : Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 35,
                            ),
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.yellow,
            child: Center(
              child: Text(
                "Emoji",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
                ),
            ),
            ),
          ),
        ),
      ),
    );
}