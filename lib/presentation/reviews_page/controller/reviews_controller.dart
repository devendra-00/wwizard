import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/reviews_page/models/reviews_model.dart';

class ReviewsController extends GetxController {
  ReviewsController(this.reviewsModelObj);

  Rx<ReviewsModel> reviewsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
