import 'package:flutter/material.dart';

class TopLogoWidget extends StatelessWidget {
  final double heightFactor;
  final Alignment alignment;

  TopLogoWidget(this.heightFactor, this.alignment);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height / heightFactor,
      alignment: alignment,
      child: Image.asset('assets/images/logo.png'),
    );
  }
}
