import 'package:d_day_app/const_data/const_calendar_data.dart';
import 'package:d_day_app/const_data/const_diary_data.dart';
import 'package:d_day_app/controller/calendar_controllers/calendar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/diary_controllers/diary_page_controller.dart';

class DiaryDeleteDialog extends StatelessWidget {
  const DiaryDeleteDialog({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final diaryDataController = Get.find<DiaryPageController>();
    final calendarController = Get.find<CalendarController>();
    return AlertDialog(
      title: const Text(
        ConstDiaryData.deleteDialogMessage,
        style: TextStyle(fontSize: 16),
      ),
      actions: [
        ElevatedButton(
            onPressed: () {
              Get.back();
              Get.back();
              diaryDataController.removeContent(index);

              calendarController.removeEvent(
                  diaryDataController.diaryDataList[index].dateTime,
                  ConstCalendarData.diaryApp);

            },
            child: const Text(ConstDiaryData.ok)),
        ElevatedButton(
            onPressed: () => Get.back(),
            child: const Text(ConstDiaryData.cancel)),
      ],
    );
  }
}
