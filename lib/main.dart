import 'package:d_day_app/const_data/const_diary_data.dart';
import 'package:d_day_app/controller/calendar_controllers/calendar_controller.dart';
import 'package:d_day_app/controller/d_day_controllers/d_day_controller.dart';
import 'package:d_day_app/data/data_model/d_day_data_model.dart';
import 'package:d_day_app/data/data_model/diary_data_model.dart';
import 'package:d_day_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'const_data/const_d_day_data.dart';
import 'controller/diary_controllers/diary_page_controller.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(HiveDiaryDataAdapter());
  Hive.registerAdapter(HiveDDayDataAdapter());

  await Hive.openBox<HiveDiaryData>(ConstDiaryData.hiveBoxName);
  await Hive.openBox<HiveDDayData>(ConstDDayData.dDayHiveBoxName);

  Get.put(DDayController());
  Get.put(DiaryPageController());
  Get.put(CalendarController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        appBarTheme:
            AppBarTheme(color: Colors.blue[800], foregroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}
