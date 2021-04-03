import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class ScheduledExamCard extends StatelessWidget {
  final String examName, studentName, duration, description, scheduledDate;

  const ScheduledExamCard({
    @required this.examName,
    @required this.studentName,
    @required this.duration,
    @required this.description,
    @required this.scheduledDate,
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
                                Row(
                                  children: <Widget>[
                                    Text(
                                      examName,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: appPrimaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      ' - $studentName',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: appBlack,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  duration,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: appPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7,
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
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              'Topic:',
                              style: TextStyle(
                                fontSize: 12,
                                color: appBlack,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              description,
                              style: TextStyle(
                                fontSize: 12,
                                color: appBlack,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      width: double.infinity,
                      color: appWhite,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 15,
                              right: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Scheduled',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: appBlack,
                                  ),
                                ),
                                Text(
                                  scheduledDate,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: appBlack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7,
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
