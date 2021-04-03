import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/views/register_institution_card.dart';
import 'package:flutter/material.dart';

class RegisterInstitutionScreen extends StatefulWidget {
  @override
  _RegisterInstitutionScreenState createState() =>
      _RegisterInstitutionScreenState();
}

class _RegisterInstitutionScreenState extends State<RegisterInstitutionScreen> {
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RegisterInstitutionCard(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
