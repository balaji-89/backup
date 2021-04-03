import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class ReportRowAnimationWidget extends StatefulWidget {
  @override
  _ReportRowAnimationWidgetState createState() =>
      _ReportRowAnimationWidgetState();
}

class _ReportRowAnimationWidgetState extends State<ReportRowAnimationWidget>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Color> animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 10),
      vsync: this,
      lowerBound: 0.1,
      upperBound: 0.1,
    );
    animation = ColorTween(
      begin: appLightGrey,
      end: appLightGrey,
    ).animate(_animationController)
      ..addListener(
        () {
          setState(() {});
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    double scale = 1 + _animationController.value;

    return GestureDetector(
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTapCancel: onTapCancel,
      child: Transform.scale(
        scale: scale,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: animation.value,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "S Arthy",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
              Text(
                "90%",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
              Text(
                "50%",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapDown(TapDownDetails details) {
    _animationController.forward();
  }

  onTapUp(TapUpDetails details) {
    _animationController.reverse();
  }

  onTapCancel() {
    _animationController.reverse();
  }
}
