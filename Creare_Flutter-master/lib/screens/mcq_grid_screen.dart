import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:Creare_Flutter/screens/mcq_list_screen.dart';
import 'package:flutter/material.dart';

class McqGridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MCQ'),
      ),
      body: Center(
        child: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: <Widget>[
            McqGridTile(
              'Science',
              () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => McqListScreen(),
                ),
              ),
            ),
            McqGridTile('Maths', () {}),
            McqGridTile('General\nStudies', () {}),
            McqGridTile('Language', () {}),
          ],
        ),
      ),
    );
  }
}

class McqGridTile extends StatelessWidget {
  final String title;
  final Function handler;

  const McqGridTile(this.title, this.handler);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handler,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: appPrimaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: appLightGrey,
            width: 1,
          ),
        ),
      ),
    );
  }
}
