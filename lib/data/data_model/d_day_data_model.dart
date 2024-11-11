import 'package:hive/hive.dart';

part 'd_day_data_model.g.dart';

@HiveType(typeId: 1)
class HiveDDayData {
  @HiveField(0)
  final DateTime dateTime;
  @HiveField(1)
  final String title;

  HiveDDayData({required this.dateTime, required this.title});
}
