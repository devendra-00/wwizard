import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/social_account_link_screen/models/social_account_link_model.dart';

class SocialAccountLinkController extends GetxController {
  Rx<SocialAccountLinkModel> socialAccountLinkModelObj =
      SocialAccountLinkModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
