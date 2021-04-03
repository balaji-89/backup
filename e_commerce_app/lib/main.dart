import 'package:e_commerce_app/provider/bottom_navigation_provider.dart';
import 'package:e_commerce_app/provider/movies_api_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomNavigationProvider()),
        ChangeNotifierProvider(create: (context) => ApiProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        primaryColor: Colors.lightGreen,
        accentColor: Colors.green,
        backgroundColor: Colors.white,
        buttonColor: Colors.lightGreen,
        textSelectionColor: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final index = Provider
        .of<BottomNavigationProvider>(context, listen: false)
        .navigatorIndex;
    final pages =
        Provider
            .of<BottomNavigationProvider>(context, listen: true)
            .pages;
    final apiData=Provider.of<ApiProvider>(context).films;
    return Scaffold(

      body: apiData.isEmpty?
          FutureBuilder(
          future: Provider.of<ApiProvider>(context).initializingApi(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return pages[index];
          }) : pages[index],
      floatingActionButton: SpeedDial(
        marginRight: MediaQuery
            .of(context)
            .size
            .width * 0.07,
        marginBottom: MediaQuery
            .of(context)
            .size
            .height * 0.06,
        curve: Curves.easeInCirc,
        animatedIcon: AnimatedIcons.menu_close,
        elevation: 0.8,
        children: [
          SpeedDialChild(
              child: Icon(
                Icons.mail_outline_rounded,
                color: Colors.white,
                size: 25,
              ),
              elevation: 0.3,
              backgroundColor: Colors.redAccent),
          SpeedDialChild(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ],
              ),
              elevation: 0.3,
              backgroundColor: Colors.green),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme
            .of(context)
            .backgroundColor,
        elevation: 0.5,
        currentIndex: index,
        iconSize: 13,
        selectedFontSize: 16,
        selectedIconTheme: IconThemeData(color: Colors.lightGreen, size: 22),
        unselectedIconTheme: IconThemeData(color: Colors.grey, size:20 ),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(

              icon: SizedBox(
                height: MediaQuery.of(context).size.height*0.035,
                width: MediaQuery.of(context).size.width*0.1,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(Icons.shopping_cart_outlined),
                    Positioned(
                      right: 1,
                      top: 1,
                      child: CircleAvatar(radius: 6,
                        backgroundColor: Theme
                            .of(context)
                            .primaryColor,
                        child: Text('0',
                            style: TextStyle(color: Colors.white, fontSize: 11)),),
                    ),
                  ],
                ),
              ), label: 'View cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Account')
        ],
        onTap: (selectedIndex) =>
            Provider.of<BottomNavigationProvider>(context, listen: false)
                .changeNavigatorIndex(selectedIndex),
      ),
    );
  }
}
