import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dynamic_List(),
    ),
  );
}

class Dynamic_List extends StatefulWidget {
  const Dynamic_List({super.key});

  @override
  State<Dynamic_List> createState() => _Dynamic_ListState();
}

class _Dynamic_ListState extends State<Dynamic_List> {

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Dynamic List",
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          elevation: 10,
          shadowColor: Colors.black,
          backgroundColor: Color(0xff244d61),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xff75e2ff),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "$count",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: CircleBorder(),
              backgroundColor: Color(0xff244d61),
              splashColor: Colors.white,
              elevation: 5,
              onPressed: (){
                setState(() {
                  count++;
                });
              },
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              shape: CircleBorder(),
              backgroundColor: Color(0xff244d61),
              splashColor: Colors.white,
              elevation: 5,
              onPressed: (){
                setState(() {
                  if(count > 0)
                    {
                      count--;
                    }
                });
              },
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}