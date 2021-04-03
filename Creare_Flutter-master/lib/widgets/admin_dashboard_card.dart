import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class AdminDashboardCard extends StatelessWidget {
  final String field, value;

  const AdminDashboardCard(this.field, this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Card(
        elevation: 5,
        shadowColor: appPrimaryColor,
        color: appWhite,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                field,
                style: TextStyle(
                  fontSize: 14,
                  color: primaryTextColor,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 24,
                  color: appPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
