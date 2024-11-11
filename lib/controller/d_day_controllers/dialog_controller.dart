import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DialogController extends GetxController {
  final controller = TextEditingController();
  DateTime? pickedDate;

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  Future<void> pickDate(BuildContext context) async {
    pickedDate = await showDatePicker(
        context: context, firstDate: DateTime(2000), lastDate: DateTime(2100));
    if (pickedDate != null) {
      update();
    }
  }

  String? pickedDateToString() {
    // if(pickedDate == null){
    //   return null;
    // }
    // return DateFormat('yyyy-MM-dd').format(pickedDate!);
    return pickedDate == null
        ? null
        : DateFormat('yyyy-MM-dd').format(pickedDate!);
  }
}
