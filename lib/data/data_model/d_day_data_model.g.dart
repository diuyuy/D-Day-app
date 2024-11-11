// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'd_day_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveDDayDataAdapter extends TypeAdapter<HiveDDayData> {
  @override
  final int typeId = 1;

  @override
  HiveDDayData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveDDayData(
      dateTime: fields[0] as DateTime,
      title: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveDDayData obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.dateTime)
      ..writeByte(1)
      ..write(obj.title);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveDDayDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
