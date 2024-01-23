import 'package:flutter/material.dart';

import '../../utils/routes.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
                GlobalRoutes.home_page, (route) => false);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Detail Page",
          style: TextStyle(
            color: Colors.white,
            fontSize: h * 0.03,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: h * 0.13,
                  width: w * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(
                      image: NetworkImage(data['companyCEOpic']),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['companyCEO'],
                        style: TextStyle(
                          fontSize: h * 0.035,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "CEO",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: h * 0.03,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.035,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Company Detail",
                      style: TextStyle(
                        fontSize: h * 0.035,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.025,
                ),
                Row(
                  children: [
                    Container(
                      height: h * 0.13,
                      width: w * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(data['companyLogo']),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      data['companyName'],
                      style: TextStyle(
                        fontSize: h * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: h * 0.025,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Company Description",
                      style: TextStyle(
                        fontSize: h * 0.035,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.025,
                ),
                Text(
                  data['companyDescripition'],
                  style: TextStyle(
                    fontSize: h * 0.025,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}