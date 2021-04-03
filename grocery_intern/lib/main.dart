import 'package:flutter/material.dart';
import 'package:grocery_intern/provider/drawer_data.dart';
import 'package:grocery_intern/screens/sliver_home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => DrawerProvider(), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Colors.lightGreen,
          accentColor: Colors.green[700],
          backgroundColor: Colors.white,
          focusColor: Colors.black45,
          buttonColor: Colors.lightGreen,
          iconTheme: IconThemeData(color: Colors.lightGreen, size: 16),
          appBarTheme: AppBarTheme(
            actionsIconTheme: IconThemeData(color: Colors.black54, size: 18),
            centerTitle: true,
            elevation: 0.5,
            color: Colors.white,
            iconTheme: IconThemeData(color: Colors.lightGreen, size: 18),
          )),
      home: App(context),
      debugShowCheckedModeBanner: false,
    );
  }
}

class App extends StatefulWidget {
  final BuildContext ctx;
  App(this.ctx);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    Provider.of<DrawerProvider>(widget.ctx).initializeList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List screens = [
      HomeScreen(),
    ];
    final index = 0;
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 16,
        currentIndex: index,
        selectedLabelStyle: TextStyle(
          color: Colors.lightGreen,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        selectedIconTheme: IconThemeData(color: Colors.lightGreen, size: 25),
        unselectedIconTheme: IconThemeData(color: Colors.grey, size: 22),
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: MediaQuery.of(context).size.height * 0.035,
                width: MediaQuery.of(context).size.width * 0.1,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(Icons.shopping_cart_outlined),
                    Positioned(
                      right: 1,
                      top: 1,
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Text('0',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 10)),
                      ),
                    ),
                  ],
                ),
              ),
              label: 'View cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Account')
        ],
        onTap: null,
      ),
    );
  }
}
