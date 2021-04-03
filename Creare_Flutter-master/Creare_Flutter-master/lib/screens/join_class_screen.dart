import 'package:Creare_Flutter/widgets/join_class_card.dart';
import 'package:flutter/material.dart';

class JoinClassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's Creare"),
      ),
      body: JoinClassCard(),
    );
  }
}
