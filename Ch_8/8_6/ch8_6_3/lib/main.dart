import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GalleryViewer(),
    ),
  );
}

class GalleryViewer extends StatefulWidget {
  const GalleryViewer({super.key});

  @override
  State<GalleryViewer> createState() => _GalleryViewerState();
}

class _GalleryViewerState extends State<GalleryViewer> {
  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/images/lake_under_blue_cloudy_sky_during_sunset_evening_hd_sunset-t1.jpg",
      "assets/images/lake_under_blue_sky_during_sunset_evening_hd_sunset-t1.jpg",
      "assets/images/lake_under_blue_sky_with_clouds_during_sunset_evening_hd_sunset-t2.jpg",
      "assets/images/lake_with_reflection_of_trees_under_cloudy_sky_during_sunset_hd_sunset-t2.jpg",
      "assets/images/lake_with_rock_and_tree_in_background_of_purple_cloudy_sky_and_beautiful_sunset_hd_sunset-t1.jpg",
    ];

    List networkImages = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgOB9hplAAzF46vWjE8HgeLvwQu5rJWcTQNIRL-3hT5A&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIXG7_Jbd3lUyq1O0oAbZKJGhWPpcpZs-cqPOLQu-xdeKTxXQUOKnBQvMuawh78L6Cv8Q&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSLRbJMCmLwS-YDS6T_z56R7tuJ5Zmruf4mv-gxZECDwy7krkcxv4uepuKkxLhcit1-Zk&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMACPrXHNeZWJl4VYzYvdQODg0PggkOIPbeMY2bizBzhKGLPWrh2eDVma5Rm-nKaY8WCE&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgeqsUomYMij4GOh75tji8ht8jBq-IT-YBFkwkKg1oEZBMwe4tcmBMlotBo8UcAVT2gMg&usqp=CAU",

    ];

    List<String> currentImages;

    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GALLERY VIEWER",
          style: TextStyle(
            fontSize: h * 0.035,
            color: Colors.white,
            letterSpacing: 5,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          Icon(
            Icons.apps_rounded,
            color: Colors.white,
            size: h * 0.035,
          ),
          SizedBox(
            width: w * 0.025,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...images
                  .map(
                    (e) => Container(
                  height: h * 0.35,
                  width: w,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(e),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )
                  .toList(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}