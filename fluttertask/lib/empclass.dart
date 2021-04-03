import 'package:hive/hive.dart';
part'empclass.g.dart';

@HiveType()
class Empcls extends HiveObject{
  @HiveField(0)
  String name;
  @HiveField(1)
  int age;
  @HiveField(2)
  String city;


  Empcls(this.name,this.age,this.city);


}