import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class UserMeetings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Meetings'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            MeetingListTile(
              meetingTime: '01 Jul 2020, 01:00 PM IST',
              meetingStatus: 'Join Meeting',
            ),
            MeetingListTile(
              meetingTime: '01 Jul 2020, 01:00 PM IST',
              meetingStatus: 'Scheduled',
            ),
            MeetingListTile(
              meetingTime: '01 Jul 2020, 01:00 PM IST',
              meetingStatus: 'Scheduled',
            ),
          ],
        ),
      ),
    );
  }
}

class MeetingListTile extends StatelessWidget {
  final String meetingTime, meetingStatus;

  const MeetingListTile({
    @required this.meetingTime,
    @required this.meetingStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: appLightGrey)),
      child: ListTile(
        title: Text(
          meetingTime,
          style: TextStyle(
            color: appBlack,
            fontSize: 12,
          ),
        ),
        trailing: GestureDetector(
          onTap: () {},
          child: Text(
            meetingStatus,
            style: TextStyle(
              color: appPrimaryColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
