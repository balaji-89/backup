import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/widgets/file_upload_drop_down.dart';
import 'package:Creare_Flutter/widgets/upload_file_button.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_button.dart';
import '../widgets/label_widget.dart';

class FileUploadCard extends StatefulWidget {
  @override
  _FileUploadCardState createState() => _FileUploadCardState();
}

class _FileUploadCardState extends State<FileUploadCard> {
  int dropDownCount = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Card(
        elevation: 3,
        shadowColor: appAccentColor,
        color: appWhite,
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
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
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          LabelWidget('ID PROOF(s)', 9, 10),
                          ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (context, index) =>
                                FileUploadDropDown(),
                            itemCount: dropDownCount,
                          ),
                          UploadFileButton(),
                          SizedBox(
                            height: 150,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                dropDownCount++;
                              });
                            },
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '+ Add more ID proofs',
                                style: TextStyle(
                                  color: primaryTextColor,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          BottomButton('FINISH', () {}),
                        ],
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
