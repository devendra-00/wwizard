import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/information_screen/models/information_model.dart';
import 'package:flutter/material.dart';

class InformationController extends GetxController {
  var id = Get.arguments[NavigationArgs.id];

  TextEditingController groupController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController groupOneController = TextEditingController();

  Rx<InformationModel> informationModelObj = InformationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupController.dispose();
    dateController.dispose();
    countryController.dispose();
    groupOneController.dispose();
  }
}
