import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DrawerProvider extends ChangeNotifier {
  List _drawerItems;

  List get drawerItems {
    return [..._drawerItems];
  }

  Future<void> initializeList() async {
    var jsonFile = await rootBundle.loadString('assets/json/drawer_items.json');
    var decodedData = json.decode(jsonFile.toString());
    _drawerItems = [...decodedData[0]["drawer_items"]];
    return Future.value();
  }
}
