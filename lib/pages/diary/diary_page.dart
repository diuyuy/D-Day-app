import 'package:d_day_app/const_data/const_diary_data.dart';
import 'package:d_day_app/const_data/const_floating_action_button_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/diary_controllers/diary_page_controller.dart';
import 'diary_add_page.dart';
import 'diary_view_page.dart';

class DiaryPage extends StatelessWidget {
  const DiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final diaryPageController = Get.find<DiaryPageController>();
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blueAccent,
        leading: const Icon(Icons.event_note_outlined),
        title: const Text(ConstDiaryData.mainTitle),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Obx(() {
            return ListView.separated(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Get.to(DiaryViewPage(index: index)),
                    child: Card(
                      child: ListTile(
                        title: Text(
                          diaryPageController.diaryDataList[index].title,
                          style: const TextStyle(
                              fontSize: ConstDiaryData.titleFontSize),
                        ),
                        //isThreeLine: true,
                        subtitle: const Text(''),
                        titleAlignment: ListTileTitleAlignment.bottom,
                        trailing: Text(
                            '날짜: ${diaryPageController.printDateTime(index)}'),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(height: 1),
                itemCount: diaryPageController.diaryDataList.length);
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          heroTag: ConstFloatingActionButtonData.tag2,
          //backgroundColor: Colors.blue[300],
          onPressed: () {
            Get.to(const DiaryAddPage());
          },
          child: const Icon(Icons.add)),
    );
  }
}

