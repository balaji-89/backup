import 'package:flutter/material.dart';
//import 'package:step_progress_indicator/step_progress_indicator.dart';

class SetupScreen extends StatefulWidget {
  @override
  _SetupScreenState createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  int setupIndex = 4;
  List<String> question1list = [
    "Yes,I have taken bench test course",
    "No,I haven't taken bench test couse"
  ];
  List<String> question2list = [
    "I've been preparing for bench preparation",
    "I'm familiar with basics but yet to prepare",
    "I am new to bench prep[aration"
  ];

  _getChildren(int pos) {
    switch (pos) {
      case 1:
        return _buildsetupQuestion1();
      case 2:
        return _buildsetupQuestion2();
      case 3:
        return _buildsetupsuccess();
      case 4:
        return _buildLocation();
      default:
        return _buildLocation();
    }
  }

  Widget _buildLocation() {
    return ListView(children: <Widget>[
      ListTile(
        leading: SizedBox(
          height: 50,
          width: 50,
          child: Image.asset("images/setup1.png"),
        ),
        title: Text(
          'Enter your Orgin Country',
          style: TextStyle(
            fontFamily: 'SF Pro Text',
            fontSize: 15,
            color: const Color(0xff232323),
            fontWeight: FontWeight.w500,
            height: 1.3333333333333333,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      new Padding(
        padding: EdgeInsets.all(20.0),
        child: TextField(),
      ),
      new Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              textColor: Colors.white,
              color: Color(0xFF4667EE),
              child: Text('Next'),
              onPressed: () {
                setState(() {
                  setupIndex = 1;
                });
              },
            )),
      ),
    ]);
  }

  Widget _buildsetupQuestion1() {
    return Column(children: <Widget>[
      ListTile(
        leading: SizedBox(
          height: 50,
          width: 50,
          child: Image.asset("images/setup2.png"),
        ),
        title: Text(
          'Have you attended a professional bench test course?',
          style: TextStyle(
            fontFamily: 'SF Pro Text',
            fontSize: 15,
            color: const Color(0xff232323),
            fontWeight: FontWeight.w500,
            height: 1.3333333333333333,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      Container(
          height: 100,
          child: new ListView.builder(
              itemCount: question1list.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return new ListTile(
                  leading: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset("images/RectangleSelect.png"),
                  ),
                  title: Text(question1list[index],
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 13,
                        color: const Color(0xff232323),
                        fontWeight: FontWeight.normal,
                        height: 1.3333333333333333,
                      )),
                );
              })),
      new Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              textColor: Colors.white,
              color: Color(0xFF4667EE),
              child: Text('Next'),
              onPressed: () {
                setState(() {
                  setupIndex = 2;
                });
              },
            )),
      ),
    ]);
  }

  Widget _buildsetupQuestion2() {
    return Column(children: <Widget>[
      ListTile(
        leading: SizedBox(
          height: 50,
          width: 50,
          child: Image.asset("images/setup3.png"),
        ),
        title: Text(
          'Enter your experience level in bench preparation',
          style: TextStyle(
            fontFamily: 'SF Pro Text',
            fontSize: 15,
            color: const Color(0xff232323),
            fontWeight: FontWeight.w500,
            height: 1.3333333333333333,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      Container(
          height: 150,
          child: new ListView.builder(
              itemCount: question2list.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext ctxt, int index) {
                return new ListTile(
                  leading: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset("images/RectangleSelect.png"),
                  ),
                  title: Text(question2list[index],
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 13,
                        color: const Color(0xff232323),
                        fontWeight: FontWeight.normal,
                        height: 1.3333333333333333,
                      )),
                );
              })),
      new Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              textColor: Colors.white,
              color: Color(0xFF4667EE),
              child: Text('Next'),
              onPressed: () {
                setState(() {
                  setupIndex = 3;
                });
              },
            )),
      ),
    ]);
  }

  Widget _buildsetupsuccess() {
    return Column(children: <Widget>[
      ListTile(
        leading: SizedBox(
          height: 50,
          width: 50,
          child: Image.asset("images/completionSuccess.png"),
        ),
        title: Text(
          'Hey! You are done with the intial setup.Start practicing.Best wishes.',
          style: TextStyle(
            fontFamily: 'SF Pro Text',
            fontSize: 15,
            color: const Color(0xff232323),
            fontWeight: FontWeight.w500,
            height: 1.3333333333333333,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      new Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              textColor: Colors.white,
              color: Color(0xFF4667EE),
              child: Text('Continue to Home Screen'),
              onPressed: () {},
            )),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFF1a1a4b),
        ),
        centerTitle: true,
        title: Text(
          'Set Up',
          style: TextStyle(color: Color(0xFF1a1a4b)),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(children: <Widget>[
        //   Container(
        //     height: 50,
        //     padding: EdgeInsets.only(left: 10,right: 10),
        //     child: StepProgressIndicator(totalSteps: 3,
        //       currentStep: setupIndex == 4 ? 0 : setupIndex,
        //       selectedColor: Colors.lightGreen,
        //       unselectedColor: Colors.black12,
        //     )
        // ),
        Container(
          padding: EdgeInsets.only(top: 60),
          child: _getChildren(setupIndex),
        )
      ]),
    );
  }
}
