import 'package:d_day_app/const_data/const_calendar_data.dart';
import 'package:d_day_app/const_data/const_diary_data.dart';
import 'package:d_day_app/controller/calendar_controllers/calendar_controller.dart';
import 'package:d_day_app/controller/diary_controllers/diary_edit_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../controller/diary_controllers/diary_page_controller.dart';

class DiaryEditPage extends StatelessWidget {
  const DiaryEditPage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    //Get.lazyPut(() => DiaryEditController(), fenix: true);
    final diaryEditController =
        Get.put<DiaryEditController>(DiaryEditController());
    final diaryPageController = Get.find<DiaryPageController>();
    final calendarController = Get.find<CalendarController>();

    diaryEditController.titleController.text =
        diaryPageController.diaryDataList[index].title;
    diaryEditController.contentController.text =
        diaryPageController.diaryDataList[index].content;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text(ConstDiaryData.mainTitle),
        actions: [
          TextButton(
            onPressed: () {
              diaryPageController.editContent(
                  index,
                  diaryEditController.titleController.text,
                  diaryEditController.contentController.text);

              calendarController.editEvent(
                  diaryPageController.diaryDataList[index].dateTime,
                  diaryEditController.titleController.text,
                  ConstCalendarData.diaryApp); // 달력 이벤트 수정

              Get.back();
              diaryEditController.titleController.clear();
              diaryEditController.contentController.clear();
            },
            child: const Text(
              ConstDiaryData.save,
              style: TextStyle(
                  fontSize: ConstDiaryData.appBarFontSize,
                  color: ConstDiaryData.appBarTextColor),
            ),
          ),
          TextButton(
            onPressed: () {
              Get.back();
              diaryEditController.titleController.clear();
              diaryEditController.contentController.clear();
            },
            child: const Text(
              ConstDiaryData.cancel,
              style: TextStyle(
                  fontSize: ConstDiaryData.appBarFontSize,
                  color: ConstDiaryData.appBarTextColor),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                SizedBox(
                  width: screenWidth,
                  child: TextField(
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(
                          ConstDiaryData.titleInputFormat)
                    ],
                    controller: diaryEditController.titleController,
                    decoration: const InputDecoration(
                        hintText: ConstDiaryData.titleHintText),
                  ),
                ),
                const Divider(height: 2),
                SizedBox(
                  width: screenWidth,
                  child: TextField(
                    controller: diaryEditController.contentController,
                    maxLines: 30,
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      hintText: ConstDiaryData.contentHintText,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
