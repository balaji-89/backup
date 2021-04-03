import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/screens/register_institution_screen.dart';
import 'package:Creare_Flutter/widgets/home_screen_bottom_row.dart';
import 'package:Creare_Flutter/views/login_user_card.dart';
import 'package:Creare_Flutter/widgets/top_logo_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      top: 8,
                    ),
                    child: TopLogoWidget(8, Alignment.topLeft),
                  ),
                  LoginUserCard(),
                  HomeScreenBottomRow(
                    'Your Institute is not listed?',
                    ' Register Institute',
                    () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            RegisterInstitutionScreen(),
                      ),
                    ),
                    WrapAlignment.center,
                    8,
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
