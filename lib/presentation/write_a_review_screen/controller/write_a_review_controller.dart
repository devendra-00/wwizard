import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/write_a_review_screen/models/write_a_review_model.dart';
import 'package:flutter/material.dart';

class WriteAReviewController extends GetxController {
  TextEditingController group1367Controller = TextEditingController();

  Rx<WriteAReviewModel> writeAReviewModelObj = WriteAReviewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group1367Controller.dispose();
  }
}
