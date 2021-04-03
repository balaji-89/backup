import 'package:flutter/material.dart';
import 'package:grocery_intern_project/screens/onboarding_screen/onboarding_screen.dart';
import 'package:hive/hive.dart';

class LogInScreen extends StatefulWidget {
  String selectedOption;

  LogInScreen({@required this.selectedOption});

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  List<Map<dynamic, dynamic>> users = [];
  Map<dynamic, dynamic> currentData = {'Id': '', 'password': ' '};
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController emailIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void signUp() {
    Hive.box('users').add(currentData);
    bool result = checkingElement(currentData['Id'], currentData['password']);

    if (result) {
      emailIdController.clear();
      passwordController.clear();
      confirmPasswordController.clear();
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Alert'),
              content: Text('Account already exist'),
              actions: [
                FlatButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Ok',
                      style: TextStyle(color: Colors.green),
                    ))
              ],
            );
          });
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoardingScreen(),
          ));
    }
  }

  void logIn() {
    bool result = checkingElement(currentData['Id'], currentData['password']);
    if (result) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoardingScreen(),
          ));
    } else {
      emailIdController.clear();
      passwordController.clear();
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Alert'),
              content: Text('Account doesn\'t exist'),
              actions: [
                FlatButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Ok',
                      style: TextStyle(color: Colors.green),
                    ))
              ],
            );
          });
    }
  }

  bool checkingElement(id, password) {
    final hiveBox = Hive.box('users');
    bool result;
    for (var i = 0; i < hiveBox.length; i++) {
      var element = hiveBox.getAt(i);
      if (element['Id'] == id && element['password'] == password) {
        result = true;
        break;
      } else {
        result = false;
      }
    }
    return result;
  }

  bool saveForm() {
    bool isValid = _formKey.currentState.validate();
    if (isValid) {
      _formKey.currentState.save();
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    Hive.close();
    emailIdController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
final mediaQueryHeight=MediaQuery.of(context).size.height;
final mediaQueryWidth=MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        height:mediaQueryHeight,
        width: mediaQueryWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag:'shop_image',
                          child: SizedBox(
                height:mediaQueryHeight * 0.27,
                width: mediaQueryWidth * 0.4,
                child: Image.asset('assets/images/grocery_test_image.jpg'),
              ),
            ),
            SizedBox(
              height: widget.selectedOption == 'Log In'
                  ? MediaQuery.of(context).size.height * 0.37
                  : MediaQuery.of(context).size.height * 0.47,
              width: MediaQuery.of(context).size.width * 0.75,
              child: LayoutBuilder(
                builder: (context, constraints) => Container(
                  padding: EdgeInsets.only(left: 7, right: 7, bottom: 6),
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: Colors.green.withOpacity(0.8)),
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: widget.selectedOption == 'Log In'
                          ? MainAxisAlignment.spaceAround
                          : MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          controller: emailIdController,
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            labelText: 'E-Mail ID',
                            hintStyle: TextStyle(
                              fontSize: 10,
                              color: Colors.black26,
                            ),
                            hintText: 'Enter your E-Mail ID',
                          ),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value.length == 0) {
                              return 'Please enter E-mail Id';
                            }
                            if (!value.contains('@') ||
                                !value.contains('.com')) {
                              return 'Enter valid E-Mail Id';
                            }
                            return null;
                          },
                          onSaved: (email) {
                            currentData['Id'] = email;
                          },
                        ),
                        TextFormField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            labelText: 'Password',
                            hintStyle: TextStyle(
                              fontSize: 10,
                              color: Colors.black26,
                            ),
                            hintText: 'Enter Password',
                          ),
                          textInputAction: widget.selectedOption == 'Sign Up'
                              ? TextInputAction.next
                              : TextInputAction.done,
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          controller: passwordController,
                          validator: (value) {
                            if (value.length <= 5 || value.length == 0) {
                              return 'password is too short';
                            }
                            return null;
                          },
                          onFieldSubmitted: widget.selectedOption == 'Sign Up'
                              ? null
                              : (_) {
                                  saveForm();
                                },
                          onSaved: (receivedPassword) {
                            currentData['password'] = receivedPassword;
                          },
                        ),
                        if (widget.selectedOption == 'Sign Up')
                          TextFormField(
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green),
                                ),
                                focusColor: Colors.green.withOpacity(0.7),
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                labelText: 'Confirm password',
                                hintStyle: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black26,
                                ),
                                hintText: 'Enter Password'),
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                            onFieldSubmitted: (_) {
                              saveForm();
                            },
                            validator: (value) {
                              if (value.length <= 5 || value.length == 0) {
                                return 'password is too short';
                              }
                              if (value != passwordController.text) {
                                confirmPasswordController.clear();
                                return 'Enter correct password';
                              }

                              return null;
                            },
                          ),
                        SizedBox(
                          height: 12,
                        ),
                        RaisedButton(
                            child: Text(widget.selectedOption,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                            color: Theme.of(context).primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            onPressed: () {
                              saveForm();
                              if (saveForm()) {
                                widget.selectedOption == 'Sign Up'
                                    ? signUp()
                                    : logIn();
                              }
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.selectedOption == 'Sign Up'
                      ? 'Already have a account ?'
                      : 'Create Account ?',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  width: 15,
                ),
                RaisedButton(
                    child: Text(
                        widget.selectedOption == 'Sign Up'
                            ? 'Log In'
                            : 'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    color:Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    onPressed: () {
                      setState(() {
                        emailIdController.clear();
                        passwordController.clear();
                        confirmPasswordController.clear();
                        widget.selectedOption == 'Sign Up'
                            ? widget.selectedOption = 'Log In'
                            : widget.selectedOption = 'Sign Up';
                      });
                    }),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
