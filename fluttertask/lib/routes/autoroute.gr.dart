// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:fluttertask/homepage.dart';
import 'package:fluttertask/addemp.dart';
import 'package:fluttertask/employee.dart';
import 'package:fluttertask/contactform.dart';

class Router {
  static const homepageroute = '/';
  static const addemproute = '/addemproute';
  static const employeeroute = '/employeeroute';
  static const contactpageroute = '/contactpageroute';
  static GlobalKey<NavigatorState> get navigatorKey =>
      getNavigatorKey<Router>();
  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.homepageroute:
        return MaterialPageRoute(
          builder: (_) => Homepage(),
          settings: settings,
        );
      case Router.addemproute:
        return MaterialPageRoute(
          builder: (_) => EmpApp(),
          settings: settings,
        );
      case Router.employeeroute:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute(
          builder: (_) => Employee(key: typedArgs),
          settings: settings,
        );
      case Router.contactpageroute:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute(
          builder: (_) => Contactpage(key: typedArgs),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}