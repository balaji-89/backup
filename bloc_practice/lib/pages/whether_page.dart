import 'dart:html';

import 'package:flutter/material.dart';
class WhetherPage extends StatelessWidget {
  final TextEditingController countryName=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Find whether'),
      ),
      body: SizedBox(
        height:MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          TextField(
            decoration: InputDecoration(hintText: 'Enter country Name here',hintStyle: TextStyle(color: Colors.white,fontSize: 17)),
            controller:countryName,
          ),
          RaisedButton.icon(onPressed: null, icon: Icon(Icons.search,color: Colors.white,), label: Text('Find your location',style: TextStyle(
            color: Colors.white,fontSize:18,
          ),),)
        ],),
      ),
      
    );
  }
}