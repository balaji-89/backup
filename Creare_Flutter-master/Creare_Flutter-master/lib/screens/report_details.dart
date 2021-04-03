import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/widgets/report_row_animation_widget.dart';
import 'package:flutter/material.dart';

class ReportDetails extends StatefulWidget {
  @override
  _ReportDetailsState createState() => _ReportDetailsState();
}

class _ReportDetailsState extends State<ReportDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Students Report")),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: Text("Grade 5"),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  color: appLightGrey,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "NAME",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: appBlack,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "PERFORMANCE",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: appBlack,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "ATTENDANCE",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: appBlack,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ReportRowAnimationWidget(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
