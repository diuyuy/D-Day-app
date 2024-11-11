import 'package:d_day_app/const_data/const_calendar_data.dart';
import 'package:d_day_app/controller/calendar_controllers/calendar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final calendarController = Get.find<CalendarController>();
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.calendar_month_outlined),
        title: const Text(ConstCalendarData.calendarTitle),
      ),
      body: GetBuilder<CalendarController>(builder: (_) {
        return TableCalendar(
          //holidayPredicate: ,
          headerStyle: const HeaderStyle(
              formatButtonVisible: false, titleCentered: true),
          focusedDay: calendarController.focusedDay,
          firstDay: DateTime.utc(2000, 1, 1),
          lastDay: DateTime.utc(2099, 12, 31),
          //locale: ConstCalendarData.calendarLocale,
          selectedDayPredicate: (day) {
            return isSameDay(calendarController.selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            calendarController.onDaySelected(selectedDay, focusedDay);
          },
          eventLoader: (day) => calendarController.events[day] ?? [],
          //calendarStyle: CalendarStyle(),
          calendarBuilders:
              CalendarBuilders(markerBuilder: (context, date, events) {
            if (events.isNotEmpty) {
              return Positioned(
                right: 1,
                bottom: 1,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '${events.length}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              );
            }
            return null;
          }),
        );
      }),
    );
  }
}
