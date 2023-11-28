import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/discount_items_screen/models/discount_items_model.dart';

class DiscountItemsController extends GetxController {
  Rx<DiscountItemsModel> discountItemsModelObj = DiscountItemsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
