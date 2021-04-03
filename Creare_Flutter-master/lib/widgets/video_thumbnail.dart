import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class VideoThumbnail extends StatelessWidget {
  final String thumbnailUrl, videoLength;

  const VideoThumbnail(this.thumbnailUrl, this.videoLength);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(6),
        topRight: Radius.circular(6),
      ),
      child: Container(
        height: 150,
        color: appWhite,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image.asset(
                thumbnailUrl,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Container(
                  padding: EdgeInsets.all(2),
                  color: appLightGrey,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      videoLength,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        color: appPrimaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
