import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/views/file_upload_card.dart';
import 'package:flutter/material.dart';

class FileUploadScreen extends StatefulWidget {
  @override
  _FileUploadScreenState createState() => _FileUploadScreenState();
}

class _FileUploadScreenState extends State<FileUploadScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appWhite,
        body: SingleChildScrollView(
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              child: Column(
                children: <Widget>[
                  FileUploadCard(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
