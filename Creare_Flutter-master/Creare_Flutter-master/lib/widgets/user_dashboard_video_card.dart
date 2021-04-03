import 'package:Creare_Flutter/widgets/video_footer.dart';
import 'package:Creare_Flutter/widgets/video_thumbnail.dart';
import 'package:flutter/material.dart';

class UserDashboardVideoCard extends StatelessWidget {
  final String thumbnailUrl, videoLength, subject, teacher, grade;
  final Function handler;

  const UserDashboardVideoCard({
    @required this.thumbnailUrl,
    @required this.videoLength,
    @required this.subject,
    @required this.teacher,
    @required this.grade,
    @required this.handler,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handler,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          children: <Widget>[
            VideoThumbnail(thumbnailUrl, videoLength),
            VideoFooter(subject, teacher, grade),
          ],
        ),
      ),
    );
  }
}
