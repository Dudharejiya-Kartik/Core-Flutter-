import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Button(),
    ),
  );
}

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {

  List<Map<String,dynamic>> Button = [
    {
      'name' : "Exit",
      'icon' : Icons.exit_to_app,
    },
    {
      'name' : "Play",
      'icon' : Icons.play_arrow,
    },
    {
      'name' : "Pause",
      'icon' : Icons.pause,
    },
    {
      'name' : "Stop",
      'icon' : Icons.stop,
    },
    {
      'name' : "Close",
      'icon' : Icons.close,
    },
    {
      'name' : "Delete",
      'icon' : Icons.delete,
    },
    {
      'name' : "Email",
      'icon' : Icons.email,
    },
    {
      'name' : "Date",
      'icon' : Icons.date_range,
    },
    {
      'name' : "Power",
      'icon' : Icons.power_settings_new_outlined,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          title: Text(
            "Map",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          shadowColor: Colors.black,
          elevation: 15,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              ...Button.map(
                    (e) => Container(
                  height: 95,
                  width: double.infinity,
                  color: Colors.white,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "${e ["name"]}",
                          style: const TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Icon(
                          e['icon'],
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
              ).toList(),
            ],
          ),
        ),
        backgroundColor: Colors.grey.shade300,
      ),
    );
  }
}