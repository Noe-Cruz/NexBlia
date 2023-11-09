import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';
import 'package:nexblia/widgets/app_bar/appbar_leading_image.dart';
import 'package:nexblia/widgets/app_bar/appbar_subtitle.dart';
import 'package:nexblia/widgets/app_bar/custom_app_bar.dart';
import 'package:nexblia/widgets/custom_elevated_button.dart';
import 'package:nexblia/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ReportarProblemaScreen extends StatelessWidget {
  ReportarProblemaScreen({Key? key}) : super(key: key);

  TextEditingController problemDescriptionPlaceholderController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 37.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Descripción del Problema:",
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 10.v),
                  Padding(
                      padding: EdgeInsets.only(left: 6.h, right: 7.h),
                      child: CustomTextFormField(
                          controller: problemDescriptionPlaceholderController,
                          hintText: "Describe el problema...",
                          textInputAction: TextInputAction.done,
                          maxLines: 8)),
                  SizedBox(height: 46.v),
                  CustomElevatedButton(width: 182.h, text: "Reportar "),
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
            text: "Reportar Problema", margin: EdgeInsets.only(left: 32.h)),
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
