import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:FlutterAnimation(),
    );
  }
}

class FlutterAnimation extends StatefulWidget {
  @override
  _FlutterAnimationState createState() => _FlutterAnimationState();
}

class _FlutterAnimationState extends State<FlutterAnimation> with SingleTickerProviderStateMixin {
  AnimationController animController;
  Animation<double>  animation;
  @override
  void initState() {

    super.initState();
    animController=AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );
    final curvedAnimation=CurvedAnimation(parent: animController, curve: Curves.bounceIn,reverseCurve: Curves.easeOutBack);
    animation=Tween<double>(begin: 0,end: 2*math.pi).animate(curvedAnimation)..addListener((){
      
      setState(() {

      });
    })..addStatusListener((status){
      if(status==AnimationStatus.completed){
        animController.reverse();
      }
      else if(status==AnimationStatus.dismissed){
        animController.forward();
      }
    });
    animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.rotate(
        angle: animation.value,

        child: Center(
          child: Container(
            decoration:BoxDecoration(
              border: Border.all(),
              shape: BoxShape.circle,

            ),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/flutter_logo.png'),
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}
