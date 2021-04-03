import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/screens/exam_screen.dart';
import 'package:flutter/material.dart';

class ExamDetailsScreen extends StatelessWidget {
  final String subject, student, duration, description, examPattern, guidelines;

  const ExamDetailsScreen({
    @required this.subject,
    @required this.student,
    @required this.duration,
    @required this.description,
    @required this.examPattern,
    @required this.guidelines,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exam'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: appLightGrey,
                width: 1,
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            subject,
                            style: TextStyle(
                              color: appPrimaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            ' - $student',
                            style: TextStyle(
                              color: appBlack,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        duration,
                        style: TextStyle(
                          color: appPrimaryColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 10,
                    left: 30,
                    bottom: 20,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Topic:',
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          description,
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30,
                    bottom: 20,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Questions:',
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          examPattern,
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30,
                    bottom: 20,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Guidelines:',
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          guidelines,
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: double.infinity,
            child: RaisedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => ExamScreen(),
                ),
              ),
              color: appPrimaryColor,
              textColor: appWhite,
              child: Text(
                'Start Exam',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
