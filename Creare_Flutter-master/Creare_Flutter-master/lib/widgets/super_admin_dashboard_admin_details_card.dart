import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class SuperAdminDashboardAdminDetailsCard extends StatelessWidget {
  final String adminName, designation, phoneNumber;

  const SuperAdminDashboardAdminDetailsCard({
    @required this.adminName,
    @required this.designation,
    @required this.phoneNumber,
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
                            'Admin Details',
                            style: TextStyle(
                              fontSize: 12,
                              color: appBlack,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        top: 5,
                        bottom: 2,
                        left: 15,
                        right: 15,
                      ),
                      child: Text(
                        adminName,
                        style: TextStyle(
                          fontSize: 12,
                          color: appPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 2,
                        bottom: 10,
                        left: 15,
                        right: 15,
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 7),
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                designation,
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              phoneNumber,
                              style: TextStyle(
                                fontSize: 10,
                                color: appBlack,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
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
