import 'package:Creare_Flutter/screens/mcq_screen.dart';
import 'package:Creare_Flutter/widgets/available_exam_card.dart';
import 'package:flutter/material.dart';

class McqListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MCQ'),
      ),
      body: ListView(
        children: <Widget>[
          AvailableExamCard(
            description: 'Photosynthesis, green house gases and global warming',
            duration: '30 mins',
            examName: 'Biology',
            studentName: 'Mr. Aakash',
            handler: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) => McqScreen(true),
              ),
            ),
          ),
          AvailableExamCard(
            description: 'Bonding, Periodic Tables',
            duration: '30 mins',
            examName: 'Chemistry',
            studentName: 'Mr. Aakash',
            handler: () {},
          ),
        ],
      ),
    );
  }
}
