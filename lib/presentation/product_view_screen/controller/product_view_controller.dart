import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/product_view_screen/models/product_view_model.dart';

class ProductViewController extends GetxController {
  Rx<ProductViewModel> productViewModelObj = ProductViewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
