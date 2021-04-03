import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:math';
import 'package:flutter/material.dart';

class BarChartModel {
  String month;
  String year;
  int financial;
  final charts.Color color = charts.ColorUtil.fromDartColor(
      Colors.primaries[Random().nextInt(Colors.primaries.length)]);

  BarChartModel({
    this.month,
    this.year,
    this.financial,
  });

  factory BarChartModel.fromJson(Map<String, dynamic> data) {
    return new BarChartModel(
      year: data['year'] as String,
      financial: int.parse(data['financial']),
    );
  }
}
