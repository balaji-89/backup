import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/screens/student_reports_screen.dart';
import 'package:Creare_Flutter/screens/user_meetings.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  final String role;

  const MainDrawer(this.role);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Drawer(
      child: Container(
        color: appWhite,
        width: width / 1.35,
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              alignment: Alignment.topLeft,
              height: 80,
              child: Image.asset('assets/images/logo.png'),
            ),
            MainDrawerItem('Tech News >>', () {}),
            if (role == 'teacher')
              MainDrawerItem(
                'Student Reports',
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => StudentReportsScreen(),
                  ),
                ),
              ),
            if (role == 'student')
              MainDrawerItem(
                'Reports',
                () {},
              ),
            if (role == 'admin') Container(),
            if (role == 'super_admin') Container(),
            MainDrawerItem('Overall Performance', () {}),
            MainDrawerItem(
              'My Meetings',
              () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => UserMeetings(),
                ),
              ),
            ),
            MainDrawerItem('My Exams', () {}),
            MainDrawerItem('My MCQs', () {}),
            MainDrawerItem('Remainders', () {}),
            MainDrawerItem('Chats', () {}),
            MainDrawerItem('Q & A', () {}),
            Spacer(),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: appBlue,
                  child: Text(
                    'PR',
                    style: TextStyle(
                      color: appWhite,
                    ),
                  ),
                ),
                title: Text(
                  'Hi Pravin,',
                  style: TextStyle(
                    color: appPrimaryColor,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: appDarkGrey,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainDrawerItem extends StatelessWidget {
  final String title;
  final Function handler;

  const MainDrawerItem(this.title, this.handler);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handler,
      child: Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 10,
          top: 15,
          bottom: 15,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: appPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
