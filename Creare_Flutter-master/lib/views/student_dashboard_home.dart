import 'package:Creare_Flutter/widgets/student_dashboard_card.dart';
import 'package:flutter/material.dart';

class StudentDashboardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        StudentDashboardCard(
          className: 'Grade 5',
          scheduledMeetings: '01 Jul 2020, 01:00 PM IST',
          subjectName: 'Maths',
          teacherName: 'Mr. Vishwanath',
          upcomingExams: '01 Jul 2020, 01:00 PM IST',
        ),
        StudentDashboardCard(
          className: 'Grade 5',
          scheduledMeetings: '01 Jul 2020, 01:00 PM IST',
          subjectName: 'Science',
          teacherName: 'Mr. Ramu',
          upcomingExams: '01 Jul 2020, 01:00 PM IST',
        ),
      ],
    );
  }
}
