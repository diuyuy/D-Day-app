import 'package:d_day_app/const_data/const_calendar_data.dart';
import 'package:d_day_app/const_data/const_d_day_data.dart';
import 'package:d_day_app/const_data/const_floating_action_button_data.dart';
import 'package:d_day_app/controller/calendar_controllers/calendar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/d_day_controllers/d_day_controller.dart';
import 'widget/edit_alert_dialog.dart';
import 'widget/my_alert_dialog.dart';

class DDayPage extends StatelessWidget {
  const DDayPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DDayController>();
    final calendarController = Get.find<CalendarController>();
    //final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.subscriptions)),
        title: const Text('D-Day app'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Obx(() {
            return ListView.builder(
                itemCount: controller.dDayDataList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      //contentPadding: EdgeInsets.zero,
                      title: Text(controller.dDayDataList[index].title,
                          style: const TextStyle(fontSize: 20)),
                      subtitle: Text(controller.printDate(index)),
                      trailing: SizedBox(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            controller.getRemain(index) > 0
                                ? Text('D+${controller.getRemain(index)}',
                                    style: const TextStyle(fontSize: 24))
                                : Text('D-${-controller.getRemain(index)}',
                                    style: const TextStyle(fontSize: 24)),
                            const SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {
                                Get.dialog(EditAlertDialog(index: index));
                              },
                              child: const Icon(Icons.edit,
                                  size: ConstDDayData.iconSize),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                controller.removeItem(index);

                                calendarController.removeEvent(
                                    controller.dDayDataList[index].dateTime,
                                    ConstCalendarData.dDayApp);
                              },
                              child: const Icon(
                                Icons.delete,
                                size: ConstDDayData.iconSize,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }),
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        heroTag: ConstFloatingActionButtonData.tag1,
        onPressed: () {
          Get.dialog(const MyAlertDialog());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
