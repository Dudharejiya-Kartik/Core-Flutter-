import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/product_list.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../utils/globalroutes.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  bool like = false;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: TextStyle(
            fontSize: h * 0.025,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xeffafafa),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                  GlobalRoutes.liked_product_page);
              if (!likedProducts.contains(data)) {
                likedProducts.add(data);
              }
            },
            icon: const Icon(Icons.favorite_outlined),
          ),
          SizedBox(
            width: w * 0.01,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...data['images']
                          .map(
                            (e) => Container(
                              height: h * 0.4,
                              width: w * 0.8,
                              margin: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.only(
                                  //   topLeft: Radius.circular(h * 0.03),
                                  //   bottomRight: Radius.circular(h * 0.04),
                                  // ),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 7,
                                      color: Colors.grey,
                                      offset: Offset(5, 5),
                                    )
                                  ],
                                  border: Border.all(),
                                  image: DecorationImage(
                                    image: NetworkImage(e),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['name'],
                              style: TextStyle(
                                fontSize: h * 0.03,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              data['category'],
                              style: TextStyle(
                                fontSize: h * 0.02,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              children: [
                                RatingBarIndicator(
                                  rating: data['rating'],
                                  itemSize: h * 0.03,
                                  itemCount: 5,
                                  direction: Axis.horizontal,
                                  textDirection: TextDirection.ltr,
                                  itemBuilder: (context, index) => const Icon(
                                    Icons.star_outlined,
                                    color: Color(0xffFFB001),
                                  ),
                                ),
                                Text(
                                  data['rating'].toString(),
                                  style: TextStyle(
                                    fontSize: h * 0.02,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Text(
                              "\$ ${data['price']}.00",
                              style: TextStyle(
                                fontSize: h * 0.025,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              data['description'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: h * 0.02),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Ink(
                              decoration: BoxDecoration(
                                color:  Colors.black,
                                borderRadius: BorderRadius.circular(h * 0.035),
                            ),
                            child: InkWell(
                              splashColor: Colors.grey.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(h * 0.035),
                              onTap: () {
                                if (!addToCart.contains(data)) {
                                  addToCart.add(data);
                                }
                              },
                              child: Container(
                                height: h * 0.06,
                                width: w,
                                alignment: Alignment.center,
                                child:  const Text(
                                  "Add To Cart",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
