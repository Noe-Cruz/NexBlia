import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';
import 'package:nexblia/widgets/app_bar/appbar_leading_image.dart';
import 'package:nexblia/widgets/app_bar/appbar_title_button.dart';
import 'package:nexblia/widgets/app_bar/appbar_trailing_image.dart';
import 'package:nexblia/widgets/app_bar/custom_app_bar.dart';
import 'package:nexblia/widgets/custom_elevated_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 28.v),
                child: Column(children: [
                  _buildThirty(context),
                  SizedBox(height: 28.v),
                  CustomElevatedButton(
                      width: 182.h,
                      text: "Servicio Rápido",
                      onPressed: () {
                        onTapServicioRpido(context);
                      }),
                  SizedBox(height: 45.v),
                  _buildEightyThree(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 59.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgImage5,
            margin: EdgeInsets.only(left: 22.h, top: 17.v, bottom: 17.v)),
        centerTitle: true,
        title: AppbarTitleButton(),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgImage10,
              margin: EdgeInsets.symmetric(horizontal: 22.h, vertical: 17.v))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return Container(
        width: 320.h,
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 20.v),
        decoration: AppDecoration.fillGreenA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildEightyOne(context,
                      imageEleven: ImageConstant.imgImage2,
                      description:
                          "Agendar visita\nReserva una cita con el profesional de tu preferencia.")),
              SizedBox(height: 26.v),
              Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildEightyOne(context,
                      imageEleven: ImageConstant.imgImage11,
                      description:
                          "Consultar visita\nBusca y reserva una cita con el profesionista de tu elección.")),
              SizedBox(height: 26.v),
              Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildEightyOne(context,
                      imageEleven: ImageConstant.imgImage11,
                      description:
                          "Cotizar servicio\nContacta un profesionista para cotizar un proyecto, remodelación o reparaciones."))
            ]));
  }

  /// Section Widget
  Widget _buildEightyThree(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v),
        decoration: AppDecoration.fillBlueA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage4,
                  height: 24.v,
                  width: 22.h,
                  margin: EdgeInsets.only(top: 33.v, bottom: 32.v)),
              Container(
                  width: 154.h,
                  margin: EdgeInsets.only(left: 20.h, bottom: 16.v),
                  child: Text(
                      "Dirección: Cafeto 59, Vista Hermosa, La Estancia, C.P. 76826, México.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(right: 2.h, bottom: 8.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage9,
                        height: 24.v,
                        width: 21.h),
                    SizedBox(height: 32.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage7,
                        height: 24.v,
                        width: 21.h)
                  ]))
            ]));
  }

  /// Common widget
  Widget _buildEightyOne(
    BuildContext context, {
    required String imageEleven,
    required String description,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: imageEleven,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 15.v, bottom: 17.v)),
          Expanded(
              child: Container(
                  width: 200.h,
                  margin: EdgeInsets.only(left: 14.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Consultar visita\n",
                            style: CustomTextStyles.bodyLargeInterBlack90016_1),
                        TextSpan(
                            text:
                                "Busca y reserva una cita con el profesionista de tu elección.",
                            style: theme.textTheme.bodyMedium)
                      ]),
                      textAlign: TextAlign.left))),
          CustomImageView(
              imagePath: ImageConstant.imgImage13,
              height: 21.v,
              width: 20.h,
              margin: EdgeInsets.only(left: 11.h, top: 14.v, bottom: 21.v))
        ]);
  }

  /// Navigates to the solicitudDeServicioScreen when the action is triggered.
  onTapServicioRpido(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.solicitudDeServicioScreen);
  }
}
