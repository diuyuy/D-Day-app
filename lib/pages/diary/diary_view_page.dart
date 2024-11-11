import 'package:d_day_app/const_data/const_diary_data.dart';
import 'package:d_day_app/pages/diary/widget/diary_delete_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/diary_controllers/diary_page_controller.dart';
import 'diary_edit_page.dart';

class DiaryViewPage extends StatelessWidget {
  const DiaryViewPage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final diaryDateController = Get.find<DiaryPageController>();
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text(ConstDiaryData.mainTitle),
        actions: [
          IconButton(
              onPressed: () => Get.to(DiaryEditPage(index: index)),
              icon: const Icon(Icons.edit)),
          IconButton(
              onPressed: () {
                Get.dialog(DiaryDeleteDialog(index: index));
              },
              icon: const Icon(Icons.delete)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
            child: Column(
              children: [
                SizedBox(
                    width: screenWidth,
                    child: Text(
                      '제목: ${diaryDateController.diaryDataList[index].title}',
                      style: const TextStyle(
                          fontSize: ConstDiaryData.titleFontSize),
                    )),
                const Divider(height: 2),
                const SizedBox(height: 20),
                SizedBox(
                  width: screenWidth,
                  child: Text(
                    diaryDateController.diaryDataList[index].content,
                    style: const TextStyle(fontSize: 18),
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
