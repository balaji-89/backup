import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class HomeScreenIconLogo extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function handler;

  const HomeScreenIconLogo(
    this.icon,
    this.text,
    this.handler,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handler,
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 28,
            backgroundColor: appPrimaryColorOpacity,
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 24,
                backgroundColor: appPrimaryColor,
                child: Icon(
                  icon,
                  color: appAccentColor,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              text,
              style: TextStyle(
                color: appPrimaryColor,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
