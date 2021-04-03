import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/models/register_bloc.dart';
import 'package:Creare_Flutter/screens/login_screen.dart';
import 'package:Creare_Flutter/widgets/file_upload_drop_down.dart';
import 'package:flutter/material.dart';

import '../widgets/home_screen_bottom_row.dart';
import '../widgets/label_widget.dart';

class RegisterUserCard extends StatefulWidget {
  final String userType, instituteType, overseasType;

  const RegisterUserCard(
      {@required this.userType,
      this.instituteType,
      @required this.overseasType});

  @override
  _RegisterUserCardState createState() => _RegisterUserCardState();
}

class _RegisterUserCardState extends State<RegisterUserCard> {
  bool _showPassword = false;
  bool _confirmPassword = false;
  changeThePage(BuildContext context) {
    /// Navigate to HomePage
  }

  @override
  Widget build(BuildContext context) {
    final bloc = RegisterBloc();

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
                        'Register as ${widget.userType}',
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
                        'Already have an account?',
                        ' Log In',
                        () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) => LoginScreen(),
                          ),
                        ),
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
                      margin: EdgeInsets.only(top: 35),
                      child: LabelWidget('CONFIRM PASSWORD', 10, 0),
                    ),
                    StreamBuilder(
                      stream: bloc.confirmpassword,
                      builder: (context, snapshot) => TextField(
                        obscureText: !this._confirmPassword,
                        onChanged: bloc.confirmPasswordChanged,
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
                              this._confirmPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 20,
                            ),
                            onPressed: () {
                              setState(() {
                                this._confirmPassword = !this._confirmPassword;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 35),
                      child: LabelWidget('SELECT INSTITUTION', 10, 0),
                    ),
                    FileUploadDropDown(),
                    Container(
                      margin: EdgeInsets.only(top: 35, bottom: 20),
                      child: StreamBuilder(
                        builder: (context, snapshot) => RaisedButton(
                          color: appPrimaryColor,
                          onPressed: () =>
                              snapshot.hasData ? changeThePage(context) : null,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Register',
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
