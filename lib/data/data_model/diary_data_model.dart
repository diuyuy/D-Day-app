import 'package:hive/hive.dart';

part 'diary_data_model.g.dart';

@HiveType(typeId: 0)
class HiveDiaryData {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final DateTime dateTime;
  @HiveField(2)
  final String content;

  HiveDiaryData(
      {required this.title, required this.dateTime, required this.content});
}
