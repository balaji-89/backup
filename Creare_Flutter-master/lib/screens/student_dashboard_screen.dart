import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/screens/exam_list_screen.dart';
import 'package:Creare_Flutter/screens/join_class_screen.dart';
import 'package:Creare_Flutter/screens/mcq_grid_screen.dart';
import 'package:Creare_Flutter/views/main_drawer.dart';
import 'package:Creare_Flutter/views/student_dashboard_home.dart';
import 'package:Creare_Flutter/views/teacher_dashboard_extra_curricular.dart';
import 'package:Creare_Flutter/views/user_dashboard_video.dart';
import 'package:Creare_Flutter/widgets/bottom_sheet_tile.dart';
import 'package:flutter/material.dart';

class StudentDashboardScreen extends StatefulWidget {
  @override
  _StudentDashboardScreenState createState() => _StudentDashboardScreenState();
}

class _StudentDashboardScreenState extends State<StudentDashboardScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    StudentDashboardHome(),
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
                'Join Class ->',
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => JoinClassScreen(),
                  ),
                ),
              ),
              BottomSheetTile(
                'Exam ->',
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => ExamListScreen(),
                  ),
                ),
              ),
              BottomSheetTile(
                'MCQ ->',
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => McqGridScreen(),
                  ),
                ),
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
      drawer: MainDrawer('student'),
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
