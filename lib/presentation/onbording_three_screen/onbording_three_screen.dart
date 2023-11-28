import 'controller/onbording_three_controller.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:ayush_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ayush_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class OnbordingThreeScreen extends GetWidget<OnbordingThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 48,right: 155),
              child: ElevatedButton(
                onPressed: () {
                  onTapBtnArrowright();
                },
                child: Icon(Icons.keyboard_arrow_right,size: 40,color: Colors.black,),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                  elevation: 5.0,
                  shadowColor: Colors.grey[600],
                ),
              ),
            ),
            extendBody: true,
            extendBodyBehindAppBar: true,
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
                      onTapArrowleft1();
                    }),
                actions: [
                  AppbarSubtitle1(
                      text: "lbl_get_started".tr,
                      margin:
                          getMargin(left: 16, top: 11, right: 16, bottom: 11))
                ]),
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(top: 50),
                decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgOnbordingthree),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 44, top: 51, right: 44, bottom: 51),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(),
                          Text("lbl_all_for_you".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium24),
                          Container(
                              width: getHorizontalSize(285),
                              margin: getMargin(top: 14),
                              child: Text("msg_we_always_try_p".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsRegular14)),
                          Container(
                              height: getSize(80),
                              width: getSize(80),
                              margin: getMargin(top: 39),
                              child:
                                  Stack(alignment: Alignment.center, children: [

                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getSize(80),
                                        width: getSize(80),
                                        child: CircularProgressIndicator(
                                            value: 0.75)))
                              ]))
                        ])))));
  }

  onTapBtnArrowright() {
    Get.toNamed(
      AppRoutes.signUpSignInScreen,
    );
  }

  onTapArrowleft1() {
    Get.back();
  }
}
