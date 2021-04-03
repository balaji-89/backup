import 'package:flutter/material.dart';

class CategoryList with ChangeNotifier {
  final List<Map<String, dynamic>> _categoryList = [
    {'icon': Icons.food_bank_rounded, 'heading': 'Friends'},
    {'icon': Icons.emoji_food_beverage_outlined, 'heading': 'Beverages'},
    {'icon': Icons.fastfood, 'heading': 'Fast Food'},
    {'icon': Icons.emoji_emotions_outlined, 'heading': 'Emoji Food'},
  ];

  List<Map<String, dynamic>> get categoryList {
    return [..._categoryList];
  }
}
