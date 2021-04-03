import 'package:flutter/material.dart';
import 'package:fluttertask/empclass.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
class Contactpage extends StatelessWidget {
  const Contactpage({
    Key key,
  }) : super(key: key);






  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hive Tutorial'),
        ),
        body: Column(children: <Widget>[
          Expanded(child: _buildListView()),

//        Padding(
//          padding: const EdgeInsets.all(18.0),
//          child: FloatingActionButton(
//            child: new Text('+'),
//            onPressed: (){





//          NewContactForm(),
        ],));
  }
  Widget _buildListView() {
    return WatchBoxBuilder(
        box: Hive.box('Empcls'),
        builder: (context, nameBox) {
          return ListView.builder(
              itemCount: nameBox.length,
              itemBuilder: (context, index) {
                final collectdata = nameBox.getAt(index) as Empcls;
                return ListTile(
                    title: Text(collectdata.name),
                    subtitle: Text(collectdata.age.toString()),


                    trailing:
                    Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.refresh),
                          onPressed: () {
                            nameBox.putAt(
                              index,
                              Empcls('${collectdata.name}*', collectdata.age + 1,collectdata.city),
                            );
                          }),
                      IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            nameBox.deleteAt(index);
                          })
                    ]));
              });
        });
  }
}