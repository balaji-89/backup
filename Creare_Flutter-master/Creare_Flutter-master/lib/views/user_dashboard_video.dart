import 'package:Creare_Flutter/screens/video_player.dart';
import 'package:Creare_Flutter/widgets/user_dashboard_video_card.dart';
import 'package:flutter/material.dart';

class UserDashboardVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 15,
        ),
        UserDashboardVideoCard(
          grade: 'Grade 6',
          subject: 'Geometry',
          teacher: 'Mr. Aakash',
          thumbnailUrl: 'assets/images/thumbnail.png',
          videoLength: '12:46',
          handler: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => VideoDemo(),
            ),
          ),
        ),
        UserDashboardVideoCard(
          grade: 'Grade 7',
          subject: 'Trignometry',
          teacher: 'Mr. Pravin',
          thumbnailUrl: 'assets/images/thumbnail.png',
          videoLength: '10:08',
          handler: () {},
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
