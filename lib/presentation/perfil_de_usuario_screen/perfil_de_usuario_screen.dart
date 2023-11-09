import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';
import 'package:nexblia/widgets/app_bar/appbar_leading_image.dart';
import 'package:nexblia/widgets/app_bar/appbar_subtitle.dart';
import 'package:nexblia/widgets/app_bar/custom_app_bar.dart';

class PerfilDeUsuarioScreen extends StatelessWidget {
  const PerfilDeUsuarioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 47.h, vertical: 60.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse1,
                      height: 170.v,
                      width: 180.h,
                      radius: BorderRadius.circular(90.h)),
                  SizedBox(height: 53.v),
                  _buildNinety(context,
                      nombreTextoTextTextText:
                          "Biografía\nTexto- Text- Text- Text"),
                  SizedBox(height: 29.v),
                  _buildNinety(context,
                      nombreTextoTextTextText:
                          "Nombre\nTexto- Text- Text- Text"),
                  SizedBox(height: 33.v),
                  _buildNinety(context,
                      nombreTextoTextTextText:
                          "Apellidos\nTexto- Text- Text- Text"),
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
        title: AppbarSubtitle(
            text: "Editar perfil", margin: EdgeInsets.only(left: 32.h)),
        styleType: Style.bgFill);
  }

  /// Common widget
  Widget _buildNinety(
    BuildContext context, {
    required String nombreTextoTextTextText,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 149.h,
              margin: EdgeInsets.only(top: 5.v),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Nombre\n",
                        style: CustomTextStyles.bodyLargeInterBlack90016_1),
                    TextSpan(
                        text: "Texto- Text- Text- Text",
                        style: theme.textTheme.bodyMedium)
                  ]),
                  textAlign: TextAlign.left)),
          CustomImageView(
              imagePath: ImageConstant.imgImage7,
              height: 21.v,
              width: 25.h,
              margin: EdgeInsets.only(left: 90.h, bottom: 24.v))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
