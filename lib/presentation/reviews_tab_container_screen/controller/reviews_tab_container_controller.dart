import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/reviews_tab_container_screen/models/reviews_tab_container_model.dart';
import 'package:flutter/material.dart';

class ReviewsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ReviewsTabContainerModel> reviewsTabContainerModelObj =
      ReviewsTabContainerModel().obs;

  late TabController group18Controller =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
