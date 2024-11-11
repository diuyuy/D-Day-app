import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiaryEditController extends GetxController {
  final titleController = TextEditingController();
  final contentController = TextEditingController();

  @override
  void onClose() {
    titleController.dispose();
    contentController.dispose();
    super.onClose();
  }
}
