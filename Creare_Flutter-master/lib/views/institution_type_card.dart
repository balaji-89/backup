import 'package:Creare_Flutter/screens/university_type_screen.dart';
import 'package:Creare_Flutter/screens/others_type_screen.dart';
import 'package:flutter/material.dart';

import '../constants/constant_colors.dart';
import '../widgets/home_screen_icon_logo.dart';

class InstitutionTypeCard extends StatelessWidget {
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
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 2.5),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: appPrimaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 2.5),
                      child: Text(
                        'Let\'s Crearé',
                        style: TextStyle(
                          color: appDarkGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          HomeScreenIconLogo(
                            Icons.local_convenience_store,
                            'SCHOOL',
                            () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    UniversityTypeScreen(
                                  instituteType: 'school',
                                ),
                              ),
                            ),
                          ),
                          HomeScreenIconLogo(
                            Icons.store,
                            'UNIVERSITY',
                            () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    UniversityTypeScreen(
                                  instituteType: 'university',
                                ),
                              ),
                            ),
                          ),
                          HomeScreenIconLogo(
                            Icons.school,
                            'OTHERS',
                            () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    OthersTypeScreen(),
                              ),
                            ),
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
