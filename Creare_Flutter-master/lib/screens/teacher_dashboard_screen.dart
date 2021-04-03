import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/views/main_drawer.dart';
import 'package:Creare_Flutter/views/teacher_dashboard_extra_curricular.dart';
import 'package:Creare_Flutter/views/teacher_dashboard_home.dart';
import 'package:Creare_Flutter/views/user_dashboard_video.dart';
import 'package:Creare_Flutter/widgets/bottom_sheet_tile.dart';
import 'package:flutter/material.dart';

class TeacherDashboardScreen extends StatefulWidget {
  @override
  _TeacherDashboardScreenState createState() => _TeacherDashboardScreenState();
}

class _TeacherDashboardScreenState extends State<TeacherDashboardScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    TeacherDashboardHome(),
    Container(),
    UserDashboardVideo(),
    TeacherDashboardExtraCurricular(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void showModalDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Wrap(
            children: <Widget>[
              BottomSheetTile(
                '+ New Meeting',
                () {},
              ),
              BottomSheetTile(
                '+ Join Meeting',
                () {},
              ),
              BottomSheetTile(
                '+ New Class',
                () {},
              ),
              BottomSheetTile(
                '+ New Exam Q & A',
                () {},
              ),
              BottomSheetTile(
                '+ Upload Syllabus',
                () {},
              ),
              BottomSheetTile(
                '+ New Remainder',
                () {},
              ),
              BottomSheetTile(
                '+ Upload Videos',
                () {},
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('My Class'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      drawer: MainDrawer('teacher'),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 15,
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
            icon: IconButton(
              icon: Icon(Icons.add_box),
              onPressed: () => showModalDialog(context),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
