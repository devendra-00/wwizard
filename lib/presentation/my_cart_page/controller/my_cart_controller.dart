import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/my_cart_page/models/my_cart_model.dart';

class MyCartController extends GetxController {
  MyCartController(this.myCartModelObj);

  Rx<MyCartModel> myCartModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
