import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/screens/register_institution_screen.dart';
import 'package:Creare_Flutter/widgets/home_screen_bottom_row.dart';
import 'package:Creare_Flutter/views/register_user_card.dart';
import 'package:flutter/material.dart';

class RegisterUserScreen extends StatefulWidget {
  final String userType, instituteType, overseasType;

  const RegisterUserScreen(
      {@required this.userType,
      this.instituteType,
      @required this.overseasType});

  @override
  _RegisterUserScreenState createState() => _RegisterUserScreenState();
}

class _RegisterUserScreenState extends State<RegisterUserScreen> {
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
                  RegisterUserCard(
                      userType: widget.userType,
                      instituteType: widget.instituteType,
                      overseasType: widget.overseasType),
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
