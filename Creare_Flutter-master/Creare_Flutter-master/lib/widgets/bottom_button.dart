import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String buttonText;
  final Function handler;

  const BottomButton(this.buttonText, this.handler);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      child: RaisedButton(
        onPressed: handler,
        color: appPrimaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              buttonText,
              style: TextStyle(
                fontSize: 14,
                color: appWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
