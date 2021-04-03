import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/screens/test_successfully_completed.dart';
import 'package:flutter/material.dart';
import 'package:Creare_Flutter/models/exam_bloc.dart';

class ExamScreen extends StatefulWidget {
  @override
  _ExamScreenState createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  final bloc = ExamBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exam'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Section B",
                    style: TextStyle(
                      fontSize: 14,
                      color: appPrimaryColor,
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
                          padding: EdgeInsets.fromLTRB(0.0, 30.0, 135.0, 20.0),
                          child: Text(
                            "1. What is Ozone formula?",
                            style: TextStyle(
                              fontSize: 14,
                              color: appPrimaryColor,
                            ),
                          ),
                        ),
                        Container(
                            child: StreamBuilder<String>(
                          stream: bloc.answerStream,
                          builder: (context, snapshot) => TextField(
                            onChanged: bloc.answerChanged,
                            controller: _textEditingController,
                            textInputAction: TextInputAction.newline,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 11, top: 11, right: 15),
                              hintText: "Type your answer here...",
                              hintStyle: TextStyle(
                                fontSize: 12,
                                color: appBlack,
                              ),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(210.0, 10.0, 0.0, 0.0),
                  child: RaisedButton(
                    color: appPrimaryColor,
                    padding: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                    onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            TestSuccessfullyCompleted(true),
                      ),
                    ),
                    child: Text(
                      'Submit',
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
        ),
      ),
    );
  }
}
