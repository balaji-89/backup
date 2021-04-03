import 'package:flutter/material.dart';

class ProductModel {
  String prodName;
  String imagePath;
  double prodRate;
  double discount;

  ProductModel({
    @required this.prodName,
    @required this.prodRate,
    @required this.imagePath,
    @required this.discount,
  });
}

class Products with ChangeNotifier {
  List<ProductModel> _products = [
    ProductModel(
        prodName: "Chilly",
        prodRate: 40,
        imagePath: 'assets/images/product_images/Chilly_item.png',
        discount: -0.03),
    ProductModel(
        prodName: "Onion",
        prodRate: 10,
        imagePath: 'assets/images/product_images/Onion_item.jpg',
        discount: -0.4),
    ProductModel(
        prodName: "Orange",
        prodRate: 20,
        imagePath: 'assets/images/product_images/Orange_item.png',
        discount: -0.6),
    ProductModel(
        prodName: "Dhall",
        prodRate: 20,
        imagePath: 'assets/images/product_images/PackedDhall_item.jpg',
        discount: -10.0),
  ];

  List<ProductModel> get products {
    return [..._products];
  }
}
