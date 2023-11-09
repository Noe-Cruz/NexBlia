import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';
import 'package:nexblia/widgets/app_bar/appbar_leading_image.dart';
import 'package:nexblia/widgets/app_bar/custom_app_bar.dart';

class CuentasVinculadasScreen extends StatelessWidget {
  const CuentasVinculadasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 35.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                          opacity: 0.99,
                          child: Text("Cuentas Vinculadas",
                              style: CustomTextStyles.titleLargeInterBlack900)),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage12,
                                    height: 17.v,
                                    width: 25.h,
                                    margin: EdgeInsets.only(
                                        top: 6.v, bottom: 19.v)),
                                Container(
                                    width: 155.h,
                                    margin: EdgeInsets.only(left: 21.h),
                                    child: Text(
                                        "Correo Electrónico\nexample@gmail.com",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyLargeInterBlack90016))
                              ])),
                      SizedBox(height: 5.v)
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
        centerTitle: true,
        title: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Cuentas ", style: CustomTextStyles.bodyLargeWhiteA700),
              TextSpan(
                  text: "vinculadas",
                  style: CustomTextStyles.bodyLargeWhiteA700)
            ]),
            textAlign: TextAlign.left),
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
