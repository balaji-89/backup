import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/widgets/home_login_register_text.dart';
import 'package:Creare_Flutter/views/institution_type_card.dart';
import 'package:Creare_Flutter/widgets/top_logo_widget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
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
                  TopLogoWidget(2, Alignment.topCenter),
                  InstitutionTypeCard(),
                  HomeLoginRegisterText(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
