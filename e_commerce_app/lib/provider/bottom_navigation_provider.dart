
import 'package:flutter/material.dart';
import 'package:e_commerce_app/screens/account_screen.dart';
import 'package:e_commerce_app/screens/home.dart';
import 'package:e_commerce_app/screens/view_cart_screen.dart';

class BottomNavigationProvider with ChangeNotifier{
var navigatorIndex=0;
final pages=[
  HomeScreen(),
  ViewCartScreen(),
  AccountScreen()
];

void changeNavigatorIndex(int selectedIndex){
  navigatorIndex=selectedIndex;
  notifyListeners();

}


}