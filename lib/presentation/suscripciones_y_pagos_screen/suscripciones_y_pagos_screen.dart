import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';
import 'package:nexblia/widgets/app_bar/appbar_leading_image.dart';
import 'package:nexblia/widgets/app_bar/appbar_subtitle.dart';
import 'package:nexblia/widgets/app_bar/custom_app_bar.dart';

class SuscripcionesYPagosScreen extends StatelessWidget {
  const SuscripcionesYPagosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 37.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Suscripciones Activas",
                          style: CustomTextStyles.titleLargeInter),
                      SizedBox(height: 18.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(left: 8.h, right: 12.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        width: 175.h,
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Plan Gratuito\n",
                                                  style: CustomTextStyles
                                                      .titleMediumSemiBold),
                                              TextSpan(
                                                  text:
                                                      "Acceso a funciones avanzadas",
                                                  style:
                                                      theme.textTheme.bodySmall)
                                            ]),
                                            textAlign: TextAlign.left)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 24.h, top: 6.v, bottom: 9.v),
                                        child: Text("0.00/mes",
                                            style: CustomTextStyles
                                                .titleSmallSemiBold))
                                  ]))),
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
        title: AppbarSubtitle(text: "Suscripciones y Pagos"),
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
