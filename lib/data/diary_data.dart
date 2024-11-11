import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_data.freezed.dart';

@freezed
class DiaryData with _$DiaryData {
  factory DiaryData({
    required String title,
    required DateTime dateTime,
    required String content,
  }) = _DiaryData;
}
