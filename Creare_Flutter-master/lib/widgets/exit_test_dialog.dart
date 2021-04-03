import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class ExitTestDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Container(
            child: Text(
              "No, Continue",
              style: TextStyle(
                fontSize: 12,
                color: appPrimaryColor,
              ),
            ),
          ),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            "Yes, Cancel",
            style: TextStyle(
              fontSize: 12,
              color: appRed,
            ),
          ),
        ),
      ],
      content: Text(
        "Are you sure you want to exit the Exam?",
        style: TextStyle(
          fontSize: 14,
          color: appBlack,
        ),
      ),
    );
  }
}
