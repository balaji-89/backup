import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'bar_chart_graph.dart';
import 'bar_chart_model.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BarChartDemo(),
    ));

class BarChartDemo extends StatefulWidget {
  @override
  _BarChartDemoState createState() => _BarChartDemoState();
}

class _BarChartDemoState extends State<BarChartDemo> {
  List<BarChartModel> convertedData = [];
  @override
  Widget build(BuildContext context) {
    List<BarChartModel> parseJson(String response) {
      if (response == null) {
        return <BarChartModel>[];
      } else {
        final parsed =
            json.decode(response.toString()).cast<Map<String, dynamic>>();
        parsed.map<BarChartModel>((json) {
          convertedData.add(BarChartModel.fromJson(json));
        }).toList();
        return convertedData;
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Animated Bar Chart Demo"),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: FutureBuilder(
          future: rootBundle.loadString('assets/graph_data.json'),
          builder: (context, snapshot) {
            parseJson(snapshot.data.toString());
            return Center(
              child: BarChartGraph(data: convertedData),
            );
          },
        ));
  }
}
