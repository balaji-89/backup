import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ReportsGraphWidget extends StatelessWidget {
  final String labelText;
  final double circleRadius, percentage;

  const ReportsGraphWidget({
    @required this.labelText,
    @required this.percentage,
    @required this.circleRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              labelText,
              style: TextStyle(
                fontSize: 12.0,
                color: appBlack,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: CircularPercentIndicator(
              radius: circleRadius,
              lineWidth: circleRadius == 90 ? 7.0 : 5.0,
              percent: percentage / 100,
              center: Text(
                percentage.toString(),
                style: TextStyle(
                  fontSize: circleRadius == 90 ? 18.0 : 14.0,
                  color: appPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              progressColor: appPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
