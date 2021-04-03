import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_clone/models/videos_info.dart';
import'screens/homeScreen.dart';
import 'package:youtube_clone/screens/videoplayer_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx)=>VideoList(),
      child: MaterialApp(debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor:Colors.white,accentColor: Colors.red),

        home: HomeScreen(),
        routes: {
        VideoPlayBack.routeName:(context)=>VideoPlayBack(),
        },
      ),
    );
  }
}

