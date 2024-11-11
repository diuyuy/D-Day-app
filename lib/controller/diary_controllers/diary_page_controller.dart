import 'package:d_day_app/const_data/const_diary_data.dart';
import 'package:d_day_app/data/data_model/diary_data_model.dart';
import 'package:d_day_app/data/diary_data.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

class DiaryPageController extends GetxController {
  final List<DiaryData> diaryDataList = <DiaryData>[].obs;
  final hiveBox = Hive.box<HiveDiaryData>(ConstDiaryData.hiveBoxName);

  @override
  void onInit() {
    final hiveList = hiveBox.values.map((element) => DiaryData(
        title: element.title,
        dateTime: element.dateTime,
        content: element.content));
    diaryDataList.addAll(hiveList);
    super.onInit();
  }

  void addContent(String title, String content) {
    DateTime dateTime = DateTime.now();
    diaryDataList
        .add(DiaryData(title: title, dateTime: dateTime, content: content));
    hiveBox
        .add(HiveDiaryData(title: title, dateTime: dateTime, content: content));
  }

  void removeContent(int index) {
    diaryDataList.removeAt(index);
    Hive.box<HiveDiaryData>(ConstDiaryData.hiveBoxName).deleteAt(index);
  }

  String printDateTime(int index) {
    return DateFormat('yy/MM/dd, a h:mm').format(diaryDataList[index].dateTime);
  }

  void editContent(int index, String title, String content) {
    final dateTime = diaryDataList[index].dateTime;
    diaryDataList[index] =
        DiaryData(title: title, dateTime: dateTime, content: content);
    hiveBox.putAt(
        index,
        HiveDiaryData(
            title: title,
            dateTime: diaryDataList[index].dateTime,
            content: content));
  }
}
