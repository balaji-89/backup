import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/screens/student_dashboard_screen.dart';
import 'package:Creare_Flutter/widgets/exit_test_dialog.dart';
import 'package:flutter/material.dart';

class TestSuccessfullyCompleted extends StatelessWidget {
  final bool isTestCompleted;

  const TestSuccessfullyCompleted(this.isTestCompleted);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            isTestCompleted
                ? Container(
                    margin: EdgeInsets.symmetric(vertical: 40),
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.exit_to_app,
                        color: appRed,
                      ),
                      onPressed: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              StudentDashboardScreen(),
                        ),
                      ),
                    ),
                  )
                : Container(
                    margin: EdgeInsets.symmetric(vertical: 40),
                  ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                isTestCompleted ? "Science Exam" : "Section A",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.check_circle,
                      color: appGreen,
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    child: Text(
                      "Submitted Successfully",
                      style: TextStyle(
                        fontSize: 18,
                        color: appGreen,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            isTestCompleted
                ? Container()
                : Container(
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return ExitTestDialog();
                          },
                        );
                      },
                      child: const Text(
                        'Start Section B >>',
                        style: TextStyle(fontSize: 12),
                      ),
                      color: appPrimaryColor,
                      textColor: appWhite,
                      elevation: 5,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
