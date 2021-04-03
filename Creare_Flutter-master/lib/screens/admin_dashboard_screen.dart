import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/views/admin_dashboard_home.dart';
import 'package:Creare_Flutter/views/admin_dashboard_scores.dart';
import 'package:Creare_Flutter/views/main_drawer.dart';
import 'package:Creare_Flutter/views/placeholder.dart';
import 'package:flutter/material.dart';

class AdminDashBoardScreen extends StatefulWidget {
  @override
  _AdminDashBoardScreenState createState() => _AdminDashBoardScreenState();
}

class _AdminDashBoardScreenState extends State<AdminDashBoardScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    AdminDashboardHome(),
    PlaceholderWidget(appGreen),
    AdminDashboardScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appWhite,
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      drawer: MainDrawer('admin'),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.record_voice_over),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.child_care),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
