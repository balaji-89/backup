import 'package:Creare_Flutter/widgets/teacher_dashboard_card.dart';
import 'package:flutter/material.dart';

class TeacherDashboardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TeacherDashboardCard(
          className: 'Grade 5',
          scheduledMeetings: '01 Jul 2020, 01:00 PM IST',
          subjectName: 'Maths',
          upcomingExams: '01 Jul 2020, 01:00 PM IST',
        ),
        TeacherDashboardCard(
          className: 'Grade 5',
          scheduledMeetings: '01 Jul 2020, 01:00 PM IST',
          subjectName: 'Science',
          upcomingExams: '01 Jul 2020, 01:00 PM IST',
        ),
      ],
    );
  }
}
