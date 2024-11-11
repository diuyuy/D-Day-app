import 'package:d_day_app/const_data/const_calendar_data.dart';
import 'package:d_day_app/controller/calendar_controllers/calendar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/d_day_controllers/d_day_controller.dart';
import '../../../controller/d_day_controllers/dialog_controller.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DDayController>();
    final calendarController = Get.find<CalendarController>();
    final dialogController = Get.put<DialogController>(DialogController());
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
                controller.addItem(dialogController.pickedDate!,
                    dialogController.controller.text); // D-day 리스트에 아이템 추가

                calendarController.addEvent(
                    //달력에 이벤트 추가
                    dialogController.pickedDate!,
                    dialogController.controller.text,
                    ConstCalendarData.dDayApp);

                dialogController.controller.clear();
                Get.back();
              }
            },
            child: const Text('추가')),
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
