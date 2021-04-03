import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/views/university_type_card.dart';
import 'package:Creare_Flutter/widgets/top_logo_widget.dart';
import 'package:flutter/material.dart';

class UniversityTypeScreen extends StatelessWidget {
  final String instituteType;

  const UniversityTypeScreen({this.instituteType});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appWhite,
        body: SingleChildScrollView(
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              child: Column(
                children: <Widget>[
                  TopLogoWidget(8, Alignment.topCenter),
                  UniversityTypeCard(instituteType: instituteType),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
