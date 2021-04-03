import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/models/login_bloc.dart';
import 'package:Creare_Flutter/services/login_rest_call.dart';
import 'package:Creare_Flutter/widgets/home_screen_bottom_row.dart';
import 'package:Creare_Flutter/widgets/label_widget.dart';
import 'package:flutter/material.dart';

class LoginUserCard extends StatefulWidget {
  @override
  _LoginUserCardState createState() => _LoginUserCardState();
}

class _LoginUserCardState extends State<LoginUserCard> {
  bool _showPassword = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  changeThePage(BuildContext context, String email, String password) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (BuildContext context) => LoginRestCall(email, password),
      ),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = LoginBloc();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Card(
        elevation: 3,
        shadowColor: appAccentColor,
        color: appWhite,
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(bottom: 2.5),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: appPrimaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: HomeScreenBottomRow(
                        'Don\'t have an account?',
                        ' Register Now',
                        () => Navigator.of(context).pop(),
                        WrapAlignment.start,
                        0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: LabelWidget('EMAIL ID', 10, 0),
                    ),
                    StreamBuilder(
                      stream: bloc.email,
                      builder: (context, snapshot) => TextField(
                        controller: emailController,
                        onChanged: bloc.emailChanged,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: primaryTextColor,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: appPrimaryColorOpacity20,
                          contentPadding: EdgeInsets.all(15),
                          isDense: true,
                          border: InputBorder.none,
                          hintText: 'Enter Email ID here...',
                          hintStyle: TextStyle(fontStyle: FontStyle.italic),
                          errorText: snapshot.error,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 35),
                      child: LabelWidget('PASSWORD', 10, 0),
                    ),
                    StreamBuilder(
                      stream: bloc.password,
                      builder: (context, snapshot) => TextField(
                        controller: passwordController,
                        obscureText: !this._showPassword,
                        onChanged: bloc.passwordChanged,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: primaryTextColor,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: appPrimaryColorOpacity20,
                          contentPadding: EdgeInsets.all(15),
                          isDense: true,
                          border: InputBorder.none,
                          hintText: 'Enter password here...',
                          hintStyle: TextStyle(fontStyle: FontStyle.italic),
                          errorText: snapshot.error,
                          suffixIcon: IconButton(
                            alignment: Alignment.center,
                            icon: Icon(
                              this._showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 20,
                            ),
                            onPressed: () {
                              setState(() {
                                this._showPassword = !this._showPassword;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50, bottom: 30),
                      child: StreamBuilder(
                        builder: (context, snapshot) => RaisedButton(
                          color: appPrimaryColor,
                          onPressed: () => changeThePage(
                            context,
                            emailController.text,
                            passwordController.text,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                color: appWhite,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
