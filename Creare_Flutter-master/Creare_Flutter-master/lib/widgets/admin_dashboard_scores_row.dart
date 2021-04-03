import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class AdminDashboardScoresRow extends StatelessWidget {
  final String studentName, className, score, activeStatus;

  const AdminDashboardScoresRow({
    @required this.studentName,
    @required this.className,
    @required this.score,
    @required this.activeStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  studentName,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    color: appBlack,
                  ),
                ),
                Text(
                  className,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    color: appBlack,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    score,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                      color: appBlack,
                    ),
                  ),
                  Text(
                    activeStatus,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                      color: activeStatus == 'Active' ? appGreen : appRed,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
