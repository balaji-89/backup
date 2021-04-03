import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/models/school_registration_bloc.dart';
import 'package:Creare_Flutter/screens/file_upload_screen.dart';
import 'package:Creare_Flutter/widgets/bottom_button.dart';
import 'package:flutter/material.dart';

import '../widgets/label_widget.dart';

class RegisterInstitutionCard extends StatefulWidget {
  @override
  _RegisterInstitutionCardState createState() =>
      _RegisterInstitutionCardState();
}

class _RegisterInstitutionCardState extends State<RegisterInstitutionCard> {
  changeThePage(BuildContext context) {
    /// Navigate to HomePage
  }

  @override
  Widget build(BuildContext context) {
    final bloc = SchoolRegistrationBloc();

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
                        'Institute Registration',
                        style: TextStyle(
                          color: appPrimaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: LabelWidget('INSTITUTE NAME', 10, 0),
                    ),
                    StreamBuilder(
                      stream: bloc.schoolName,
                      builder: (context, snapshot) => TextField(
                        onChanged: bloc.schoolNameChanged,
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
                          hintText: 'Enter your Institute name here',
                          hintStyle: TextStyle(fontStyle: FontStyle.italic),
                          errorText: snapshot.error,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: LabelWidget('ADDRESS LINE 1', 10, 0),
                    ),
                    StreamBuilder(
                      stream: bloc.addressOne,
                      builder: (context, snapshot) => TextField(
                        onChanged: bloc.addressOneChanged,
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
                          hintText: 'Enter your address here',
                          hintStyle: TextStyle(fontStyle: FontStyle.italic),
                          errorText: snapshot.error,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: LabelWidget('ADDRESS LINE 2', 10, 0),
                    ),
                    StreamBuilder(
                      stream: bloc.addressTwo,
                      builder: (context, snapshot) => TextField(
                        onChanged: bloc.addressTwoChanged,
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
                          hintText: 'Enter your address here',
                          hintStyle: TextStyle(fontStyle: FontStyle.italic),
                          errorText: snapshot.error,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: LabelWidget('PIN CODE', 10, 0),
                    ),
                    StreamBuilder(
                      stream: bloc.pinCode,
                      builder: (context, snapshot) => TextField(
                        onChanged: bloc.pinCodeChanged,
                        keyboardType: TextInputType.number,
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
                          hintText: 'Enter pincode',
                          hintStyle: TextStyle(fontStyle: FontStyle.italic),
                          errorText: snapshot.error,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: BottomButton(
                        'NEXT >>',
                        () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                FileUploadScreen(),
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
