import 'package:flutter/material.dart';
import './widgets/new_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expence Tracker'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add), onPressed: null)
          ],


        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  Card(
                    child: Text('graph bar'),
                  ),
                  NewTransaction(),
                ],
              ),
              FlatButton(onPressed: null, child: Icon(Icons.add))
            ],
          ),

        ),
      ),
    );
  }
}
