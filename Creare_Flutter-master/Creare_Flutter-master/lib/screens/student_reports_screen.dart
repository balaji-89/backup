import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/widgets/reports_graph_widget.dart';
import 'package:flutter/material.dart';

class StudentReportsScreen extends StatefulWidget {
  @override
  _StudentReportsScreenState createState() => _StudentReportsScreenState();
}

class _StudentReportsScreenState extends State<StudentReportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Report"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Card(
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ReportsGraphWidget(
                      circleRadius: 90,
                      labelText: 'Overall Performance',
                      percentage: 30,
                    ),
                    ReportsGraphWidget(
                      circleRadius: 90,
                      labelText: 'Attendence',
                      percentage: 50,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Card(
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      alignment: Alignment.topLeft,
                      child: Text(
                        '% Completion',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: appBlack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ReportsGraphWidget(
                            circleRadius: 60,
                            labelText: 'Live Attended',
                            percentage: 30,
                          ),
                          ReportsGraphWidget(
                            circleRadius: 60,
                            labelText: 'Videos Completed',
                            percentage: 50,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ReportsGraphWidget(
                            circleRadius: 60,
                            labelText: 'MCQs Attended',
                            percentage: 30,
                          ),
                          ReportsGraphWidget(
                            circleRadius: 60,
                            labelText: 'Exams Attended',
                            percentage: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
