import 'package:flutter/material.dart';
class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child:Text('account screen',style:TextStyle(
              fontSize: 14,
              color:Colors.green,
            ))
        ),
      ),
    );
  }
}
