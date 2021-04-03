import 'package:flutter/material.dart';
import 'package:btb/UI/forgotPassword.dart';


class SignIN extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SignINState();
}

class _SignINState extends State<SignIN> with SingleTickerProviderStateMixin {
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
              'Sign in',
              style: TextStyle(color: Color(0xFF1a1a4b)),
            ),
            backgroundColor: Colors.white,
            elevation: 5.0,
            actions: <Widget>[
              FlatButton(
                textColor: Colors.blueAccent,
                onPressed: () {},
                child: Text(
                  "Sign up",
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
    _buildForgotPasswordBtn(),
          SizedBox(height: 20.0),
          Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 30,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Color(0xFF4667EE),
                child: Text('Sign in'),
                onPressed: () {},
              )),
          SizedBox(height: 100.0),
          _buildtermsandCondition()
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

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 30.0,top: 0.0),
      child: FlatButton(
        onPressed: () {
        Navigator.push(
        context,
        MaterialPageRoute(
        builder: (BuildContext context) =>
        forgotPassword()));
        },
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}
