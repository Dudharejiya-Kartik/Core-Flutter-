import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/product_list.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../utils/globalroutes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String cat = "All";
  bool like = false;

  void initState() {
    Category.insert(0, "All");
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Discover",
          style: TextStyle(
            fontSize: h * 0.045,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(GlobalRoutes.cart_page);
            },
            icon: Icon(Icons.shopping_cart),
          ),
          SizedBox(
            width: w * 0.009,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(GlobalRoutes.liked_product_page);
            },
            icon: Icon(Icons.favorite),
          ),
          SizedBox(
            width: w * 0.03,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: h * 0.060,
                width: w * 0.900,
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(w * 0.50),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: w * 0.01,
                      ),
                      Icon(
                        Icons.search,
                        size: h * 0.03,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: w * 0.015,
                      ),
                      Text(
                        "Search Anything",
                        style: TextStyle(
                          fontSize: h * 0.02,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffcacaca),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.3,
                      ),
                      const Icon(Icons.tune),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: h * 0.03,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: w * 0.025,
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: h * 0.02,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      letterSpacing: 0.8,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: Category.map(
                    (e) => GestureDetector(
                      onTap: () {
                        setState(() {
                          cat = e;
                        });
                      },
                      child: Container(
                        height: h * 0.055,
                        width: w * 0.3,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: (cat == e)
                              ? Color(0xff2e3759)
                              : Color(0xfff2f2f2),
                          borderRadius: BorderRadius.circular(h * 0.02),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                            )
                          ]
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          e.toString().replaceFirst(
                              e[0], e[0].toString().toUpperCase()),
                          style: TextStyle(
                            fontSize: h * 0.02,
                            color: (cat == e) ? Colors.white : Colors.black,
                            fontWeight:
                                (cat == e) ? FontWeight.bold : FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ).toList(),
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...Products.map(
                      (e) => (cat == e['category'])
                          ? GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    GlobalRoutes.detail_page,
                                    arguments: e);
                              },
                              child: Container(
                                height: h * 0.5,
                                width: w * 0.6,
                                margin: const EdgeInsets.all(12),
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.circular(14),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                    )
                                  ]
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              like = !like;
                                            });
                                          },
                                          icon: (like == true)
                                              ? Icon(Icons.favorite)
                                              : Icon(Icons
                                              .favorite_border_outlined),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Container(
                                      height: h * 0.20,
                                      width: w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                            image: NetworkImage(e['image']),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Text(
                                      e['name'],
                                      style: TextStyle(
                                        fontSize: h * 0.02,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Text(
                                      "⭐ ( ${e['rating']} )",
                                      style: TextStyle(
                                        fontSize: h * 0.02,
                                        color: const Color(0xff9A9998),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Text(
                                      "\$ ${e['price']}",
                                      style: TextStyle(
                                        fontSize: h * 0.02,
                                        color: Color(0xff8c8c8c),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : (cat == "All")
                              ? GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                        GlobalRoutes.detail_page,
                                        arguments: e);
                                  },
                                  child: Container(
                                    height: h * 0.48,
                                    width: w * 0.6,
                                    margin: const EdgeInsets.all(12),
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: Color(0xfff3f3f5),
                                      borderRadius: BorderRadius.circular(14),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 1,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  like = !like;
                                                });
                                              },
                                              icon: (like == true)
                                                  ? Icon(Icons.favorite)
                                                  : Icon(Icons
                                                      .favorite_border_outlined),
                                              //color: Color(0xffCECECE),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: h * 0.01,
                                        ),
                                        Container(
                                          height: h * 0.20,
                                          width: w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            image: DecorationImage(
                                                image: NetworkImage(e['image']),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                        SizedBox(
                                          height: h * 0.01,
                                        ),
                                        Text(
                                          e['name'],
                                          style: TextStyle(
                                            fontSize: h * 0.02,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: h * 0.01,
                                        ),
                                        Text(
                                          "⭐ ( ${e['rating']} )",
                                          style: TextStyle(
                                            fontSize: h * 0.02,
                                            color: const Color(0xff9A9998),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: h * 0.01,
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                            fontSize: h * 0.02,
                                            color: Color(0xff8c8c8c),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Container(),
                    ).toList()
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest Category",
                    style: TextStyle(
                      fontSize: h * 0.028,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: w * 0.027,
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: h * 0.02,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      letterSpacing: 0.8,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              ...List.generate(
                3,
                (index) => Container(
                  height: h * 0.18,
                  width: w,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(h * 0.01),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(h * 0.015),
                            image: DecorationImage(
                              image: NetworkImage(Products[index + 5]['image']),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${Products[index + 5]['name']}",
                                style: TextStyle(
                                  fontSize: h * 0.02,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "\$ ${Products[index + 5]['price']}",
                                style: TextStyle(
                                  fontSize: h * 0.02,
                                  color: Color(0xff8c8c8c),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(" ⭐(${Products[index + 5]['rating']})",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffFFFFFF),
      bottomNavigationBar: Container(
        height: h * 0.09,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: GNav(
          gap: 8,
            backgroundColor: Colors.grey.shade200,
            tabBackgroundColor: Colors.grey.shade50,
            tabs:  [
              GButton(icon: Icons.home,text: "Home",),
              GButton(icon: Icons.favorite_border_outlined,text: "Saved",
                onPressed: ()
                {
                  Navigator.of(context).pushNamed(
                      GlobalRoutes.liked_product_page);
                },
              ),
              GButton(icon: Icons.search,text: "Search",),
              GButton(icon: Icons.settings,text: "Settings",),
            ],
        ),
      ),
    );
  }
}
