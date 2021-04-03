import 'package:flutter/material.dart';
import './item_info.dart';
class Items with ChangeNotifier{
  final List<ItemInfo> _items=[
    ItemInfo(
        id:'p1',
        title: 'KidsTrend',
        imageUrl: 'assets/images/kidsTrend.jpeg',
        price: 2000
    ),
    ItemInfo(
        id:'p2',
        title: 'Phone',
        imageUrl: 'assets/images/download.jpeg',
        price: 2000
    ),
    ItemInfo(
        id:'p3',
        title: 'KidsTradition',
        imageUrl: 'assets/images/kidsTradition.jpeg',
        price: 2000
    ),
    ItemInfo(
        id:'p4',
        title: 'Utensils',
        imageUrl: 'assets/images/utensils.jpeg',
        price: 2000
    ),
    ItemInfo(
        id:'p5',
        title: 'Books',
        imageUrl: 'assets/images/images.jpeg',
        price: 2000
    ),
    ItemInfo(
        id:'p6',
        title: 'Pencils',
        imageUrl: 'assets/images/pencils.jpeg',
        price: 2000
    ),
  ];
  List<ItemInfo> get getItems{
    return [..._items];
  }
}