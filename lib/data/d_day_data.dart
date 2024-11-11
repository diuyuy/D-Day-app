import 'package:freezed_annotation/freezed_annotation.dart';

part 'd_day_data.freezed.dart';

@freezed
class DDayData with _$DDayData {
  const factory DDayData({
    required DateTime dateTime,
    required String title,
    //required String subtitle,
  }) = _DDayData;
}
