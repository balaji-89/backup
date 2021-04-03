import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

import 'label_widget.dart';

class SuperAdminDashboardInstitutionDetailsCard extends StatelessWidget {
  final String institutionAddress,
      institutionName,
      registrationId,
      phoneNumber,
      emailId;

  const SuperAdminDashboardInstitutionDetailsCard({
    @required this.institutionAddress,
    @required this.institutionName,
    @required this.registrationId,
    @required this.phoneNumber,
    @required this.emailId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Card(
        elevation: 5,
        shadowColor: appPrimaryColor,
        color: appWhite,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: <Widget>[
                    Container(
                      color: appPrimaryColorOpacity20,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                              bottom: 5,
                              left: 15,
                              right: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  institutionName,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: appPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 5,
                              bottom: 10,
                              left: 15,
                              right: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  institutionAddress,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: primaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                        left: 15,
                        right: 15,
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: LabelWidget('Registration ID', 10, 0),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              registrationId,
                              style: TextStyle(
                                fontSize: 12,
                                color: appBlack,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: LabelWidget('Phone Number', 10, 0),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              phoneNumber,
                              style: TextStyle(
                                fontSize: 12,
                                color: appBlack,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: LabelWidget('Email ID', 10, 0),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              emailId,
                              style: TextStyle(
                                fontSize: 12,
                                color: appBlack,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
