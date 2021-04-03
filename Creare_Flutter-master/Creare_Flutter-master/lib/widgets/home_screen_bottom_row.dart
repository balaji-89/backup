import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class HomeScreenBottomRow extends StatelessWidget {
  final String startText, middleText;
  final WrapAlignment alignment;
  final Function handler;
  final double margin;

  const HomeScreenBottomRow(
    this.startText,
    this.middleText,
    this.handler,
    this.alignment,
    this.margin,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin, vertical: 8),
      child: Wrap(
        alignment: alignment,
        children: <Widget>[
          Text(
            startText,
            style: TextStyle(
              color: appDarkGrey,
              fontSize: 14,
            ),
          ),
          GestureDetector(
            onTap: handler,
            child: Text(
              middleText,
              style: TextStyle(
                color: primaryTextColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
