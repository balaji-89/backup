// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empclass.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EmpclsAdapter extends TypeAdapter<Empcls> {
  @override
  Empcls read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Empcls(
      fields[0] as String,
      fields[1] as int,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Empcls obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.city);
  }
}
