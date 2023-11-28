import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/popular_items_screen/models/popular_items_model.dart';

class PopularItemsController extends GetxController {
  Rx<PopularItemsModel> popularItemsModelObj = PopularItemsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
