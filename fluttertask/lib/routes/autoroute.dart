import 'package:fluttertask/contactform.dart';
import 'package:fluttertask/homepage.dart';
import 'package:auto_route/auto_route_annotations.dart';
import  'package:fluttertask/addemp.dart';
import  'package:fluttertask/employee.dart';

@autoRouter
class $Router{
  @initial
  Homepage homepageroute;

  EmpApp addemproute;
  Employee employeeroute;
  Contactpage contactpageroute;
}
