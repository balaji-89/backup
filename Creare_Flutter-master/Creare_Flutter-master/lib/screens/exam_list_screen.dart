import 'package:Creare_Flutter/screens/exam_details_screen.dart';
import 'package:Creare_Flutter/widgets/available_exam_card.dart';
import 'package:Creare_Flutter/widgets/scheduled_exam_card.dart';
import 'package:flutter/material.dart';

class ExamListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exam'),
      ),
      body: ListView(
        children: <Widget>[
          AvailableExamCard(
            description: 'Photosynthesis, green house gases and global warming',
            duration: '30 mins',
            examName: 'Science Exam',
            studentName: 'Mr. Aakash',
            handler: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => ExamDetailsScreen(
                  description:
                      'Photosynthesis, green house gases and global warming',
                  duration: '30 mins',
                  examPattern:
                      'Section A - 15 questions\nSection B - 5 questions',
                  guidelines:
                      ' - Once each section is completed, it will be submitted\n - Check for uninterrupted internet',
                  student: 'Mr. Aakash',
                  subject: 'Science Exam',
                ),
              ),
            ),
          ),
          ScheduledExamCard(
            description: 'Photosynthesis, green house gases and global warming',
            duration: '30 mins',
            examName: 'Science Exam',
            studentName: 'Mr. Aakash',
            scheduledDate: '23 July 2020, 2:00 PM IST',
          ),
        ],
      ),
    );
  }
}
