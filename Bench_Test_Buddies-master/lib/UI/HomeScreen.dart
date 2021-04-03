import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:btb/UI/signUp.dart';
import 'package:btb/UI/SignIN.dart';
import 'package:btb/Resources/Utils.dart';
import 'package:btb/UI/SetUp.dart';
import 'package:btb/UI/exerciseSection.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      bottomNavigationBar: BottomAppBar(
//        color: Colors.transparent,
//        child: _buildtermsandCondition(),
//        elevation: 0,
//      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                //height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    // horizontal: 40.0,
                    vertical: 50.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: new EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Text(
                          'Get Started',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'OpenSans',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      _buildfacebookBtn(),
                      _buildgoogleBtn(),
                      SizedBox(height: 20.0),
                      Text(
                        '- OR -',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      _buildsignAndSignUpBtnRow(),
                      SizedBox(height: 20.0),
                      _buildtermsandCondition(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildfacebookBtn() {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        width: MediaQuery.of(context).size.width,
        child: new FlatButton.icon(
          padding: EdgeInsets.all(10.0),
          icon: new Image.asset('images/Facebook_Icon.png'), //`Icon` to display
          label: Text('Proceed With Facebook'), //`Text` to display
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: const Color(0xffD2D2D2),
                  width: 1,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(5)),
          onPressed: () {
            //Code to execute when Floating Action Button is clicked
            //...
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SetupScreen()));
          },
        ));
  }

  Widget _buildgoogleBtn() {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: new FlatButton.icon(
          padding: EdgeInsets.all(10.0),
          icon: new Image.asset('images/Google_Icon.png'), //`Icon` to display
          label: Text('Proceed With Google'), //`Text` to display
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: const Color(0xffD2D2D2),
                  width: 1,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(5)),
          onPressed: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (BuildContext context) =>
            //             exerciseSectionScreen()));
          },
        ));
  }

  Widget _buildSocialBtn
  (Function onTap, String logo, String title) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20.0),
        height: 80.0,
        width: MediaQuery.of(context).size.width / 2,
        child: new FlatButton.icon(
            padding: EdgeInsets.all(10.0),
            icon: new Image.asset(logo),
            label: Text(title),
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: const Color(0xffD2D2D2),
                    width: 1,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(5)),
            onPressed: onTap),
      ),
    );
  }

  Widget _buildsignAndSignUpBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
              () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SignUP())),
              "images/Email_Icon.png",
              "Sign up"),
          _buildSocialBtn(
              () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SignIN())),
              "images/Email_Icon.png",
              "Sign in"),
        ],
      ),
    );
  }

  Widget _buildtermsandCondition() {
    return GestureDetector(
      onTap: () => print('Terms and condition Pressed'),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'By Signing up you are agree to our',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: ' terms and policy',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
