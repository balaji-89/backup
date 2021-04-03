import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/screens/register_user_screen.dart';
import 'package:flutter/material.dart';

class UserTypeCard extends StatelessWidget {
  final String instituteType, overseasType;

  const UserTypeCard({this.instituteType, @required this.overseasType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Card(
        elevation: 3,
        shadowColor: appAccentColor,
        color: appWhite,
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(bottom: 2.5),
                      child: Text(
                        'Registration',
                        style: TextStyle(
                          color: appPrimaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 2.5),
                      child: Text(
                        'Select an option from below',
                        style: TextStyle(
                          color: appDarkGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10),
                            child: RaisedButton(
                              onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      RegisterUserScreen(
                                    userType: 'Student',
                                    instituteType: instituteType,
                                    overseasType: overseasType,
                                  ),
                                ),
                              ),
                              color: appPrimaryColor,
                              child: Container(
                                width: 120,
                                child: Text(
                                  'I\'m a Student',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: appWhite,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text('(or)'),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: RaisedButton(
                              onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      RegisterUserScreen(
                                    userType: 'Teacher',
                                    instituteType: instituteType,
                                    overseasType: overseasType,
                                  ),
                                ),
                              ),
                              color: appPrimaryColor,
                              child: Container(
                                width: 120,
                                child: Text(
                                  'I\'m a Teacher',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: appWhite,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 150,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
