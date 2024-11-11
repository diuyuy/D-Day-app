import 'package:get/get.dart';
import 'package:hive/hive.dart';

import 'package:d_day_app/const_data/const_calendar_data.dart';
import 'package:d_day_app/const_data/const_d_day_data.dart';
import 'package:d_day_app/const_data/const_diary_data.dart';
import 'package:d_day_app/data/calendar_event.dart';
import 'package:d_day_app/data/data_model/d_day_data_model.dart';
import 'package:d_day_app/data/data_model/diary_data_model.dart';

class CalendarController extends GetxController {
  final events = <DateTime, List<CalendarEvent>>{};

  final dDayBox = Hive.box<HiveDDayData>(ConstDDayData.dDayHiveBoxName);
  final diaryBox = Hive.box<HiveDiaryData>(ConstDiaryData.hiveBoxName);
  var _focusedDay = DateTime.now();
  DateTime? _selectedDay = DateTime.now();

  DateTime get focusedDay => _focusedDay;

  DateTime? get selectedDay => _selectedDay;

  @override
  void onInit() {
    final dDayList = dDayBox.values.toList();
    final diaryList = diaryBox.values.toList();
    if (dDayList.isNotEmpty) {
      for (int i = 0; i < dDayList.length; i++) {
        events[formatDateTime(dDayList[i].dateTime)] = [
          (CalendarEvent(
              title: dDayList[i].title, app: ConstCalendarData.dDayApp))
        ];
      }
    }
    if (diaryList.isNotEmpty) {
      for (int i = 0; i < diaryList.length; i++) {
        events[formatDateTime(diaryList[i].dateTime)] == null
            ? events[formatDateTime(diaryList[i].dateTime)] = [
                CalendarEvent(
                    title: diaryList[i].title, app: ConstCalendarData.diaryApp)
              ]
            : events[formatDateTime(diaryList[i].dateTime)]!.add(CalendarEvent(
                title: diaryList[i].title, app: ConstCalendarData.diaryApp));
      }
    }
    super.onInit();
  }

  DateTime formatDateTime(DateTime dateTime) {
    return DateTime.utc(dateTime.year, dateTime.month, dateTime.day);
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    _selectedDay = selectedDay;
    _focusedDay = focusedDay;
    update();
  }

  void addEvent(DateTime dateTime, String title, String app) {
    dateTime = formatDateTime(dateTime);

    if (events[dateTime] != null) {
      events[dateTime]!.add(CalendarEvent(title: title, app: app));
    } else {
      events[dateTime] = [CalendarEvent(title: title, app: app)];
    }
    update();
  }

  void removeEvent(DateTime dateTime, String app) {
    dateTime = formatDateTime(dateTime);
    events[dateTime]!.removeWhere((element) => element.app == app);
    update();
  }

  void editEvent(DateTime dateTime, String title, String app) {
    dateTime = formatDateTime(dateTime);
    final index = events[dateTime]!.indexWhere((element) => element.app == app);
    events[dateTime]![index].title = title;
    update();
  }
}
