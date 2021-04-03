import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class LabelWidget extends StatelessWidget {
  final String labelText;
  final double fontSize, leftMargin;

  const LabelWidget(this.labelText, this.fontSize, this.leftMargin);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5, left: leftMargin),
      alignment: Alignment.topLeft,
      child: Text(
        labelText,
        style: TextStyle(
          color: appPrimaryColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
