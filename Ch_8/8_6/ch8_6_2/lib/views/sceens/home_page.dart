import 'package:flutter/material.dart';

import '../../utils/product.dart';
import '../../utils/routes.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MNC CEO'S",
          style: TextStyle(
            fontSize: h * 0.035,
            color: Colors.white,
            letterSpacing: 3,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...Product.map(
                    (e) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                        GlobalRoutes.detail_page,
                        arguments: e);
                  },
                  child: Container(
                    height: h * 0.13,
                    margin: EdgeInsets.all(6),
                    width: w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: w * 0.025,
                        ),
                        Expanded(
                          child: Container(
                            height: h * 0.095,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(e['companyLogo']),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.035,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: h * 0.03,
                              ),
                              Text(
                                e['companyName'],
                                style: TextStyle(
                                  fontSize: h * 0.03,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: h * 0.001,
                              ),
                              Text(
                                e['companyCEO'],
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: h * 0.02,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: h * 0.095,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: NetworkImage(e['companyCEOpic']),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.025,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}