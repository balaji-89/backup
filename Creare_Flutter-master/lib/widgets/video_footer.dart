import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class VideoFooter extends StatelessWidget {
  final String subject, teacher, grade;

  const VideoFooter(this.subject, this.teacher, this.grade);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(6),
        bottomRight: Radius.circular(6),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        color: appPrimaryColorOpacity20,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                subject,
                style: TextStyle(
                  fontSize: 14,
                  color: appPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    teacher,
                    style: TextStyle(
                      fontSize: 10,
                      color: appPrimaryColor,
                    ),
                  ),
                  Text(
                    grade,
                    style: TextStyle(
                      fontSize: 10,
                      color: appPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
