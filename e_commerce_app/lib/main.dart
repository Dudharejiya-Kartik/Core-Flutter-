import 'package:e_commerce_app/utils/globalroutes.dart';
import 'package:e_commerce_app/views/screens/cart_page.dart';
import 'package:e_commerce_app/views/screens/home_page.dart';
import 'package:e_commerce_app/views/screens/liked_product_page.dart';
import 'package:e_commerce_app/views/screens/product_details_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const E_CommerceApp(),
  );
}

class E_CommerceApp extends StatelessWidget {
  const E_CommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        GlobalRoutes.home_page : (context) => const HomePage(),
        GlobalRoutes.detail_page : (context) =>  ProductDetailsPage(),
        GlobalRoutes.cart_page : (context) => const CartPage(),
        GlobalRoutes.liked_product_page : (context) =>const LikedProductPage(),
      },
    );
  }
}