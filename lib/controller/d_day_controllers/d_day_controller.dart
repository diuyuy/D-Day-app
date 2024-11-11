import 'package:d_day_app/data/d_day_data.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

import '../../const_data/const_d_day_data.dart';
import '../../data/data_model/d_day_data_model.dart';

class DDayController extends GetxController {
  final List<DDayData> dDayDataList = <DDayData>[].obs;
  final hiveBox = Hive.box<HiveDDayData>(ConstDDayData.dDayHiveBoxName);

  @override
  void onInit() {
    final list = hiveBox.values.map((element) =>
        DDayData(dateTime: element.dateTime, title: element.title));
    dDayDataList.addAll(list);
    super.onInit();
  }

  int getRemain(int index) {
    DateTime today = DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().hour);
    return today.difference(dDayDataList[index].dateTime).inDays;
  }

  void addItem(DateTime dateTime, String title) {
    dDayDataList.add(DDayData(dateTime: dateTime, title: title));
    hiveBox.add(HiveDDayData(dateTime: dateTime, title: title));
  }

  void removeItem(int index) {
    dDayDataList.removeAt(index);
    hiveBox.deleteAt(index);
  }

  String printDate(int index) {
    return DateFormat('yyyy-MM-dd').format(dDayDataList[index].dateTime);
  }

  void editItem(DateTime dateTime, String title, int index) {
    dDayDataList[index] = DDayData(dateTime: dateTime, title: title);
    //hiveBox.putAt(index, HiveDDayData(dateTime: dateTime, title: title));
  }
}
