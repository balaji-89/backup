import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class JoinClassCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(20),
        elevation: 8.0,
        child: Row(
          children: <Widget>[
            Container(
              color: appPrimaryColorOpacity,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      "Maths Class",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    child: Text(
                      "M. Vishwas",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    child: Text(
                      "24 Students",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      "GRADE 4",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: RaisedButton(
                      color: appPrimaryColor,
                      onPressed: () {},
                      child: Text(
                        "Join Now",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: appWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
