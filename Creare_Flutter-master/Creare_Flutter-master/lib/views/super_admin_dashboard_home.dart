import 'package:Creare_Flutter/widgets/admin_dashboard_card.dart';
import 'package:flutter/material.dart';

class SuperAdminDashboardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        AdminDashboardCard('Students', '70'),
        AdminDashboardCard('Admins', '11'),
        AdminDashboardCard('Meetings', '23'),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
