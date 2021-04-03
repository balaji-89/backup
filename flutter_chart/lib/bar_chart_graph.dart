import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'bar_chart_model.dart';

class BarChartGraph extends StatelessWidget {
  final List<BarChartModel> data;


  BarChartGraph({@required this.data});




  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
          id: "Financial",
          data:data,
          domainFn: (BarChartModel series, _) => series.year,
          measureFn: (BarChartModel series, _) => series.financial,
          colorFn: (BarChartModel series, _) => series.color),
    ];
    return  Container(
      height:800,
      padding:EdgeInsets.all(20),
      child:Card(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children:[
                Text('Example of BarGraph'),
               Expanded( child: charts.BarChart(series,
                animate: true)
               ),
              ]
          ),
        ),
      ),

    );
  }
}

