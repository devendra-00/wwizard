import 'controller/information_controller.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:ayush_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ayush_s_application1/widgets/custom_button.dart';
import 'package:ayush_s_application1/widgets/custom_icon_button.dart';
import 'package:ayush_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class InformationScreen extends GetWidget<InformationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 5, bottom: 5),
                    onTap: () {
                      onTapArrowleft4();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_information".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(104),
                              width: getHorizontalSize(92),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Icon(Icons.account_circle,size: 100,color: Colors.teal,),
                                    CustomIconButton(
                                        height: 29,
                                        width: 30,
                                        variant:
                                            IconButtonVariant.OutlineWhiteA700,
                                        padding: IconButtonPadding.PaddingAll6,
                                        alignment: Alignment.bottomCenter,
                                        onTap: () {
                                          onTapBtnCamera();
                                        },
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgCamera))
                                  ]))),

                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("lbl_account_name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium15)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.groupController,
                          hintText: "- - - -".tr,
                          margin: getMargin(top: 10)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("lbl_date_of_birth".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium15)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.dateController,
                          hintText: "lbl_11_01_1997".tr,
                          margin: getMargin(top: 11)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("lbl_address".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium15)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.countryController,
                          hintText: "Andheri ,Mumbai".tr,
                          margin: getMargin(top: 10)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("lbl_mobile_number".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium15)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.groupOneController,
                          hintText: "lbl_9999_999_999".tr,
                          margin: getMargin(top: 11, bottom: 3),
                          textInputAction: TextInputAction.done)
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(52),
                text: "lbl_complete".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapComplete();
                })));
  }

  onTapBtnCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapComplete() {
    Get.toNamed(
      AppRoutes.exploreShopScreen,
    );
  }

  onTapArrowleft4() {
    Get.back();
  }
}
