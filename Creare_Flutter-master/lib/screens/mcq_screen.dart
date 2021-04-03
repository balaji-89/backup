import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/screens/test_successfully_completed.dart';
import 'package:flutter/material.dart';
import 'package:Creare_Flutter/models/mcq_bloc.dart';
import 'package:Creare_Flutter/models/mcq_model.dart';

class McqScreen extends StatefulWidget {
  final bool isFirstScreen;

  const McqScreen(this.isFirstScreen);

  @override
  _McqScreenState createState() => _McqScreenState();
}

class _McqScreenState extends State<McqScreen> {
  bool checkBoxValue1 = false;
  bool checkBoxValue2 = false;
  bool checkBoxValue3 = false;
  McqModel quiz = new McqModel(
    question: ' 1. What is ozone layer?',
    option1: 'O3',
    option2: 'Nitrogen',
    option3: 'Carbon Dioxide',
  );

  @override
  Widget build(BuildContext context) {
    final bloc = McqBloc();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("MCQ")),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Text(
                    'Section A\n\n30.00',
                    style: TextStyle(
                      fontSize: 14,
                      color: appPrimaryColor,
                    ),
                  ),
                ),
              ),
              Container(
                height: 500.0,
                width: 350.0,
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.all(20),
                        child: Text(
                          quiz.question,
                          style: TextStyle(
                            color: appPrimaryColor,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            StreamBuilder<bool>(
                              stream: bloc.option1Stream,
                              builder: (context, snapshot) => Checkbox(
                                value: checkBoxValue1,
                                activeColor: appGreen,
                                onChanged: (bool value) {
                                  print(value);
                                  bloc.option1Changed;
                                  setState(() {
                                    checkBoxValue1 = value;
                                  });
                                },
                              ),
                            ),
                            Text(
                              quiz.option1,
                              style: TextStyle(
                                color: appBlack,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            StreamBuilder<bool>(
                              stream: bloc.option2Stream,
                              builder: (context, snapshot) => Checkbox(
                                value: checkBoxValue2,
                                activeColor: appGreen,
                                onChanged: (bool value) {
                                  print(value);
                                  bloc.option2Changed;
                                  setState(() {
                                    checkBoxValue2 = value;
                                  });
                                },
                              ),
                            ),
                            Text(
                              quiz.option2,
                              style: TextStyle(
                                color: appBlack,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            StreamBuilder<bool>(
                              stream: bloc.option3Stream,
                              builder: (context, snapshot) => Checkbox(
                                value: checkBoxValue3,
                                activeColor: appGreen,
                                onChanged: (bool value) {
                                  print(value);
                                  bloc.option3Changed;
                                  setState(() {
                                    checkBoxValue3 = value;
                                  });
                                },
                              ),
                            ),
                            Text(
                              quiz.option3,
                              style: TextStyle(
                                color: appBlack,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    widget.isFirstScreen
                        ? Container()
                        : Container(
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: appPrimaryColor,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              onPressed: () {},
                              child: Text(
                                '<- Back',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: appPrimaryColor,
                                ),
                              ),
                            ),
                          ),
                    Container(
                      child: RaisedButton(
                        onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                TestSuccessfullyCompleted(false),
                          ),
                        ),
                        color: appPrimaryColor,
                        child: Text(
                          widget.isFirstScreen ? 'Next ->' : 'Submit',
                          style: TextStyle(
                            fontSize: 12,
                            color: appWhite,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
