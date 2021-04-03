import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class BottomSheetTile extends StatelessWidget {
  final String data;
  final Function handler;

  const BottomSheetTile(this.data, this.handler);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handler,
      child: Container(
        width: double.infinity,
        color: appPrimaryColorOpacity20,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: Text(
          data,
          textAlign: TextAlign.center,
          style: TextStyle(color: appBlack, fontSize: 14),
        ),
      ),
    );
  }
}
