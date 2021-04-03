import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

import 'label_widget.dart';

class TeacherDashboardCard extends StatelessWidget {
  final String subjectName, className, upcomingExams, scheduledMeetings;

  const TeacherDashboardCard({
    @required this.subjectName,
    @required this.className,
    @required this.upcomingExams,
    @required this.scheduledMeetings,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Card(
        elevation: 5,
        shadowColor: appPrimaryColor,
        color: appWhite,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: <Widget>[
                    Container(
                      color: appPrimaryColorOpacity20,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                              bottom: 5,
                              left: 15,
                              right: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '$subjectName Class',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: appBlack,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: appPrimaryIconColor,
                                  size: 12,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 5,
                              bottom: 10,
                              left: 15,
                              right: 15,
                            ),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              className,
                              style: TextStyle(
                                fontSize: 12,
                                color: appBlack,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                        left: 15,
                        right: 15,
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: LabelWidget('Upcoming Exams', 12, 0),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(upcomingExams),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: LabelWidget('Meetings Scheduled', 12, 0),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(scheduledMeetings),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
