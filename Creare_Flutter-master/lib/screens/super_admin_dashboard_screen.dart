import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/views/main_drawer.dart';
import 'package:Creare_Flutter/views/placeholder.dart';
import 'package:Creare_Flutter/views/super_admin_dashboard_home.dart';
import 'package:Creare_Flutter/views/super_admin_dashboard_institution_details.dart';
import 'package:flutter/material.dart';

class SuperAdminDashboardScreen extends StatefulWidget {
  @override
  _SuperAdminDashboardScreenState createState() =>
      _SuperAdminDashboardScreenState();
}

class _SuperAdminDashboardScreenState extends State<SuperAdminDashboardScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    SuperAdminDashboardHome(),
    PlaceholderWidget(appGreen),
    SuperAdminDashboardInstitutionDetails(),
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
      drawer: MainDrawer('super_admin'),
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
