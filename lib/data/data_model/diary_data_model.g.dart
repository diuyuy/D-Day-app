// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveDiaryDataAdapter extends TypeAdapter<HiveDiaryData> {
  @override
  final int typeId = 0;

  @override
  HiveDiaryData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveDiaryData(
      title: fields[0] as String,
      dateTime: fields[1] as DateTime,
      content: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveDiaryData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.dateTime)
      ..writeByte(2)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveDiaryDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
