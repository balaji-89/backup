import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/widgets/admin_dashboard_scores_row.dart';
import 'package:flutter/material.dart';

class AdminDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(bottom: 40),
              child: Text(
                'Students - 70',
                style: TextStyle(
                  color: appPrimaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                AdminDashboardScoresRow(
                  studentName: 'Aakash',
                  className: 'Grade 12',
                  score: '80 %',
                  activeStatus: 'Active',
                ),
                Divider(),
                AdminDashboardScoresRow(
                  studentName: 'Arthy',
                  className: 'Grade 12',
                  score: '90 %',
                  activeStatus: 'Inactive',
                ),
                Divider(),
                AdminDashboardScoresRow(
                  studentName: 'Siddhanth',
                  className: 'Grade 12',
                  score: '100 %',
                  activeStatus: 'Active',
                ),
                Divider(),
                AdminDashboardScoresRow(
                  studentName: 'Rashmita',
                  className: 'Grade 12',
                  score: '60 %',
                  activeStatus: 'Active',
                ),
                Divider(),
                AdminDashboardScoresRow(
                  studentName: 'Pravin',
                  className: 'Grade 12',
                  score: '85 %',
                  activeStatus: 'Inactive',
                ),
                Divider(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
