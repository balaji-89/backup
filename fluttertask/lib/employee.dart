
import 'package:flutter/material.dart';

import 'package:fluttertask/empclass.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:fluttertask/routes/autoroute.gr.dart';

class Employee extends StatelessWidget {
  const Employee({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Employees"),
        ),
        body: Column(
            children: <Widget>[
              Expanded(child: buildListView()),

              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: (){
                        Router.navigator.pushNamed(Router.addemproute);
                      },child: Text('+',style: TextStyle(fontSize:20.0),)
                      ,)
                  ],


                ),
              ),
            ]));
  }
}

Widget buildListView() {
  return WatchBoxBuilder(
      box: Hive.box('Empcls'),
      builder: (context, empbox) {
        return ListView.separated(
            separatorBuilder: (context,index)=> Divider(color:Colors.black),
            itemCount: empbox.length,
            itemBuilder: (context, index) {
              final collectdata = empbox.getAt(index) as Empcls;
              return Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          collectdata.name.toUpperCase(),
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25.0),
                        ),
                      ),



                      IconButton(
                          icon: Icon(Icons.delete),
                          color: Colors.black38,
                          onPressed: () {
                            empbox.deleteAt(index);
                          }),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Age :",
                            style: TextStyle(
                                color: Colors.black38, fontSize: 20.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text(collectdata.age.toString(),
                            style: TextStyle(
                                color: Colors.black38, fontSize: 20.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 200.0,
                        ),
                        child: Text("City :",
                            style: TextStyle(
                                color: Colors.black38, fontSize: 20.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Text(collectdata.city,
                            style: TextStyle(
                                color: Colors.black38, fontSize: 20.0)),
                      ),],),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Chip(label: Text(collectdata.city)),
                      ],
                    ),
                  )
                ],


              );
            });
      });
}