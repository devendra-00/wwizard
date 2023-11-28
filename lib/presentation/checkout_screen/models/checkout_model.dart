import 'package:get/get.dart';
import 'checkout_item_model.dart';

class CheckoutModel {
  Rx<List<CheckoutItemModel>> checkoutItemList =
      Rx(List.generate(1, (index) => CheckoutItemModel()));
}
