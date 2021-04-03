import 'package:flutter/foundation.dart';

class McqModel {
  final String question;
  final String option1;
  final String option2;
  final String option3;

  McqModel({
    @required this.question,
    @required this.option1,
    @required this.option2,
    @required this.option3,
  });
}
