import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/order_status_screen/models/order_status_model.dart';

class OrderStatusController extends GetxController {
  Rx<OrderStatusModel> orderStatusModelObj = OrderStatusModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
