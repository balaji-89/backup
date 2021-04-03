import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class FileUploadDropDown extends StatefulWidget {
  FileUploadDropDown({Key key}) : super(key: key);

  @override
  _FileUploadDropDownState createState() => _FileUploadDropDownState();
}

class _FileUploadDropDownState extends State<FileUploadDropDown> {
  String dropdownValue = 'Select the type of ID proof';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: appPrimaryColorOpacity20,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isExpanded: true,
            value: dropdownValue,
            icon: Icon(Icons.keyboard_arrow_down),
            iconSize: 24,
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>[
              'Select the type of ID proof',
              'PAN Card',
              'Aadhaar Card',
              'Passport',
              'Voter ID',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(
                    color: appDarkGrey,
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
