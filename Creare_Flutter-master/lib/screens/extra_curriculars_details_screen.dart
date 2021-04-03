import 'package:Creare_Flutter/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class ExtraCurricularsDetailsScreen extends StatelessWidget {
  final String title;
  final List<String> topics;

  const ExtraCurricularsDetailsScreen({
    @required this.title,
    @required this.topics,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: topics.length,
          itemBuilder: (context, index) => Container(
            color: appPrimaryColorOpacity20,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
            child: ListTile(
              title: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  topics[index],
                  style: TextStyle(
                    color: appBlack,
                    fontSize: 16,
                  ),
                ),
              ),
              trailing: FlatButton(
                onPressed: () {},
                child: Text(
                  'Add to my Interest',
                  style: TextStyle(
                    color: appPrimaryColor,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
