import 'package:d_day_app/const_data/const_calendar_data.dart';
import 'package:d_day_app/controller/calendar_controllers/calendar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/d_day_controllers/d_day_controller.dart';
import '../../../controller/d_day_controllers/dialog_controller.dart';

class EditAlertDialog extends StatelessWidget {
  const EditAlertDialog({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DDayController>();
    final dialogController = Get.put<DialogController>(DialogController());
    final calendarController = Get.find<CalendarController>();
    //final dialogController = Get.find<DialogController>();
    return AlertDialog(
      contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      content: SizedBox(
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: GetBuilder<DialogController>(builder: (_) {
                return Text(
                    dialogController.pickedDateToString() ?? '날짜를 선택하세요');
              }),
              trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(2.0)),
                  onPressed: () {
                    dialogController.pickDate(context);
                  },
                  child: const Text('선택')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: TextField(
                controller: dialogController.controller,
                decoration: const InputDecoration(
                  hintText: '제목을 적어주세요',
                ),
              ),
            )
          ],
        ),
      ),
      actions: [
        ElevatedButton(
            onPressed: () {
              if (dialogController.pickedDate != null &&
                  dialogController.controller.text.isNotEmpty) {
                controller.editItem(dialogController.pickedDate!,
                    dialogController.controller.text, index); // D-day 리스트 항목 편집

                calendarController.editEvent(
                    dialogController.pickedDate!,
                    dialogController.controller.text,
                    ConstCalendarData.dDayApp); //Calendar event 수정

                dialogController.controller.clear();
                Get.back();
              }
            },
            child: const Text('편집')),
        ElevatedButton(
            onPressed: () {
              dialogController.controller.clear();
              Get.back();
            },
            child: const Text('취소')),
      ],
    );
  }
}
