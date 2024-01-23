import 'package:e_commerce_app/utils/product_list.dart';
import 'package:e_commerce_app/utils/globalroutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class LikedProductPage extends StatefulWidget {
  const LikedProductPage({super.key});

  @override
  State<LikedProductPage> createState() => _LikedProductPageState();
}

class _LikedProductPageState extends State<LikedProductPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liked Products",
          style: TextStyle(
            fontSize: h * 0.025,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xeffafafa),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  GlobalRoutes.home_page, (route) => false);
            },
            icon: const Icon(Icons.home_filled),
          ),
          SizedBox(
            width: w * 0.025,
          )
        ],
      ),
    body: Padding(
    padding: const EdgeInsets.all(18),
    child: (likedProducts.isEmpty)
    ? Center(
    child: Image.network("https://media1.tenor.com/m/Z4H2w7dmSGgAAAAC/error-april-fool.gif"),
    ): Column(
      children: [
        ...likedProducts
        .map((e) =>Slidable(
    endActionPane: ActionPane(
    motion: const BehindMotion(),
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              int index = likedProducts.indexOf(e);
              likedProducts.removeAt(index);
            });
          },
          child: Container(
            height: h * 0.17,
            width: w * 0.2,
            decoration: BoxDecoration(
              color: const Color(0xffF2F2F2),
              borderRadius:
              BorderRadius.circular(h * 0.015),
            ),
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                SizedBox(
                  height: h * 0.025,
                ),
                Text(
                  "Remove",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: h * 0.018,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
          child: Column(
            children: [
              Container(
                height: h * 0.178,
                width: w,
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.circular(h * 0.01),
                ),
                child: Row(
                  children: [

                Expanded(
    flex: 2,
    child: Row(
    crossAxisAlignment:
    CrossAxisAlignment.start,
    children: [
    Expanded(
    child: Container(
    decoration: BoxDecoration(
    borderRadius:
    BorderRadius.circular(h * 0.01),
    image: DecorationImage(
    image:
    NetworkImage(e['image']),
    fit: BoxFit.fill,
    ),
    ),
    ),
    ),
    SizedBox(
    width: w * 0.01,
    ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              e['name'],
              style: TextStyle(
                fontSize: h * 0.02,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Text(
              "⭐ (${e['rating']})",
              style: TextStyle(
                fontSize: h * 0.02,
                color:
                const Color(0xff9A9998),
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Expanded(
            child: Text(
              "\$ ${e['price']}",
              style: TextStyle(
                fontSize: h * 0.023,
                fontWeight: FontWeight.w500,
                color:
                const Color(0xff9A9998),
              ),
            ),
          ),
        ],
      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ],
          )
    ),
    ),
    ],
    )
    ),
    );
  }
}
