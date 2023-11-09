import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';
import 'package:nexblia/widgets/app_bar/appbar_leading_image.dart';
import 'package:nexblia/widgets/app_bar/appbar_subtitle.dart';
import 'package:nexblia/widgets/app_bar/custom_app_bar.dart';

class ConfiguraciNScreen extends StatelessWidget {
  const ConfiguraciNScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 37.v),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 642.v),
                          child: Text("Cuenta",
                              style:
                                  CustomTextStyles.bodyLargeInterBlack90017)),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage13,
                          height: 21.v,
                          width: 20.h,
                          margin: EdgeInsets.only(bottom: 642.v),
                          onTap: () {
                            onTapImgImageFourteen(context);
                          })
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 20.v, bottom: 21.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Configuración ", margin: EdgeInsets.only(left: 32.h)),
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the configuraciNDeCuentaScreen when the action is triggered.
  onTapImgImageFourteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.configuraciNDeCuentaScreen);
  }
}
