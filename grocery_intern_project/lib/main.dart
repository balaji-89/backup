import 'package:flutter/material.dart';
import 'package:grocery_intern_project/provider/category.dart';
import 'package:grocery_intern_project/provider/drawer_data.dart';
import 'package:grocery_intern_project/provider/products.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:grocery_intern_project/screens/signIn_signOut_pages/signIn_signOut.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(



    
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DrawerProvider()),
        ChangeNotifierProvider(create: (context) => CategoryList()),
        ChangeNotifierProvider(create: (context) => Products()),
      ],
      child: MyGrocery(),
    ),
  );
  final appDirectory = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDirectory.path);
  await Hive.openBox('users');
}

class MyGrocery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green[300],
          accentColor: Colors.green[300],
          backgroundColor: Colors.white,
          errorColor: Colors.red[200],
          textSelectionTheme:
              TextSelectionThemeData(selectionColor: Colors.deepPurple),
          appBarTheme: AppBarTheme(
            centerTitle: true,
            color: Colors.green[300],
            elevation: 0.5,
            iconTheme: IconThemeData(color: Colors.white, size: 17),
          )),
      debugShowCheckedModeBanner: false,
      home: SignInOutSelection(),
    );
  }
}
