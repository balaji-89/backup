import 'package:flutter/material.dart';


class signUpSuccess extends StatefulWidget {
@override
State<StatefulWidget> createState() => new _DashBoardPageState();
}

class _DashBoardPageState extends State<signUpSuccess> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Color(0xFF1a1a4b),
            ),
            centerTitle: true,
            title: Text(
              'Success',
              style: TextStyle(color: Color(0xFF1a1a4b)),
            ),
            backgroundColor: Colors.white,
            elevation: 5.0,
            ),
      body:new Column(
      mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      new ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          child: new Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                image: AssetImage("images/completionSuccess.png"),
              ),
            ),
          ),
        ),
        title: new Text(
          "Congratulation!",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
        ),
        subtitle: new Row(
          children: [
            new Text("You have been registered successfully"),
          ],
        ),
      ),
      Container(
          height: 100,
          width: MediaQuery.of(context).size.width - 30,
          padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
          child: RaisedButton(
            textColor: Colors.white,
            color: Color(0xFF4667EE),
            child: Text('Continue to Setup Screen'),
            onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        signUpSuccess()));},
          ))

          ]
      ),
    );

  }
}