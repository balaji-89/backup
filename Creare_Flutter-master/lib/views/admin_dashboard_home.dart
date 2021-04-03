import 'package:Creare_Flutter/widgets/admin_dashboard_card.dart';
import 'package:flutter/material.dart';

class AdminDashboardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        AdminDashboardCard('Students', '70'),
        AdminDashboardCard('Teachers', '11'),
        AdminDashboardCard('Meetings', '23'),
        AdminDashboardCard('Videos', '107'),
        AdminDashboardCard('Handouts', '05'),
        AdminDashboardCard('Syllabus', '10'),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
