import 'package:flutter/material.dart';

import 'package:fluttertask/routes/autoroute.gr.dart';





class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: Router.homepageroute,
        onGenerateRoute: Router.onGenerateRoute,
        navigatorKey: Router.navigatorKey,

        home: Scaffold(
            appBar: AppBar(
              title: Text('Home'),
            ),

            body: new Column(
                children:<Widget>[

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ListTile(


                      leading: Icon(Icons.account_box),
                      title:Text('Team',style: TextStyle(fontSize:30.0,)),
                      onTap: (){
                        Router.navigator.pushNamed(Router.employeeroute);
                      },
                      trailing:
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[

                            Icon(Icons.chevron_right,size: 40.0,),



                          ]),),
                  ),

                  ListTile(


                      leading: Icon(Icons.group),
                      title:Text('Employees',style: TextStyle(fontSize:30.0)),
                      onTap: (){
                        Router.navigator.pushNamed(Router.employeeroute);
                      },
                      trailing:
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[

                            Icon(Icons.chevron_right,size: 40.0,),
                          ])),




                ] )));
  }
}