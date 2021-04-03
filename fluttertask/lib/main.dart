import 'package:flutter/material.dart';

import 'package:fluttertask/homepage.dart';
import 'empclass.dart';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathprovider;
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await pathprovider.getApplicationDocumentsDirectory();

  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(EmpclsAdapter(),0);
  runApp(MyApp());



}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FutureBuilder(
            future: Hive.openBox('Empcls'),

            builder: (context,  snapshot){
              if(snapshot.connectionState==ConnectionState.done)

                return Homepage();
              else
                return Scaffold();







            }


        ));
  }

  @override
  void dispose(){
    Hive.box('Empcls').compact();
    Hive.close();
    super.dispose();
  }

}

