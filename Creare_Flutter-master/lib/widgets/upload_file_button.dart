import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class UploadFileButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 50,
      ),
      child: OutlineButton(
        onPressed: () {},
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(3),
        ),
        highlightedBorderColor: appPrimaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.file_upload,
              color: primaryTextColor,
              size: 18,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'UPLOAD ID PROOF(s)',
              style: TextStyle(
                color: primaryTextColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
