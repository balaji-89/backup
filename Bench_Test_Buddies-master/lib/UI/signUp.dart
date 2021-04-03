import 'package:btb/UI/SignIN.dart';
import 'package:flutter/material.dart';
import 'package:btb/UI/signupSuccess.dart';
import 'package:get/get.dart';

class SignUP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SignUPState();
}

class _SignUPState extends State<SignUP> with SingleTickerProviderStateMixin {
// Initially password is obscure
  bool _obscureText = true;
  final _formLoginKey = GlobalKey<FormState>();

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
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
              'Sign up',
              style: TextStyle(color: Color(0xFF1a1a4b)),
            ),
            backgroundColor: Colors.white,
            elevation: 5.0,
            actions: <Widget>[
              FlatButton(
                textColor: Colors.blueAccent,
                onPressed: () {
                  Get.to(SignIN());
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 16),
                ),
                shape:
                    CircleBorder(side: BorderSide(color: Colors.transparent)),
              ),
            ]),
        backgroundColor: const Color(0xffffffff),
        body: Stack(children: <Widget>[_getLogin(context)]));
  }

  _getLogin(BuildContext context) {
    return Form(
      key: _formLoginKey,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                    left: 30.0, right: 30.0, bottom: 20.0, top: 15.0),
                child: TextFormField(
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (value) {},
                    decoration: InputDecoration(
                        errorBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFF0000), width: 2.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFF0000), width: 2.0),
                        ),
                        labelText: 'User Name',
                        hintStyle: TextStyle(color: Colors.black54)),
                    validator: ((val) {
                      if (val.isNotEmpty) {
                        return "";
                      } else if (val.isEmpty) {
                        return "Email is required.";
                      } else {
                        return null;
                      }
                    }))),
            Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0),
                child: TextFormField(
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (value) {},
                    decoration: InputDecoration(
                        errorBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFF0000), width: 2.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFF0000), width: 2.0),
                        ),
                        labelText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.black54)),
                    validator: (val) =>
                        val.isEmpty ? 'Email Address is required.' : null)),
            Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0),
                child: TextFormField(
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (value) {},
                    decoration: InputDecoration(
                        errorBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFF0000), width: 2.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFF0000), width: 2.0),
                        ),
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        hintStyle: TextStyle(color: Colors.black54)),
                    obscureText: true,
                    validator: (val) =>
                        val.isEmpty ? 'Password is required.' : null)),
            Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 30,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Color(0xFF4667EE),
                  child: Text('Sign up'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                signUpSuccess()));
                  },
                )),
            SizedBox(height: 100.0),
            _buildtermsandCondition()
          ],
        ),
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
