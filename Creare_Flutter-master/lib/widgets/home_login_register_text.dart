import 'package:Creare_Flutter/screens/login_screen.dart';
import 'package:Creare_Flutter/screens/register_institution_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen_bottom_row.dart';

class HomeLoginRegisterText extends StatelessWidget {
  const HomeLoginRegisterText();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          HomeScreenBottomRow(
            'Already have an account?',
            ' Log In ',
            () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => LoginScreen(),
              ),
            ),
            WrapAlignment.center,
            8,
          ),
          HomeScreenBottomRow(
            'Your institute is not registered?',
            ' Register Institute ',
            () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => RegisterInstitutionScreen(),
              ),
            ),
            WrapAlignment.center,
            8,
          ),
        ],
      ),
    );
  }
}
