import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';
import 'package:nexblia/widgets/custom_elevated_button.dart';
import 'package:nexblia/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SolicitudDeServicioScreen extends StatelessWidget {
  SolicitudDeServicioScreen({Key? key}) : super(key: key);

  TextEditingController selectButtonController = TextEditingController();

  TextEditingController streetNameController = TextEditingController();

  TextEditingController cityNameController = TextEditingController();

  TextEditingController zipCodeController = TextEditingController();

  TextEditingController stateNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blue100,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 49.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("Solicitud de servicio",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 28.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage26,
                          height: 71.v,
                          width: 164.h,
                          alignment: Alignment.center),
                      SizedBox(height: 56.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("Servicio ",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 4.v),
                      _buildSelectButton(context),
                      SizedBox(height: 4.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("Calle",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 4.v),
                      _buildStreetName(context),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("Municipio",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 3.v),
                      _buildCityName(context),
                      SizedBox(height: 4.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("CP",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 4.v),
                      _buildZipCode(context),
                      SizedBox(height: 3.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("Estado  ",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 4.v),
                      _buildStateName(context),
                      SizedBox(height: 56.v),
                      _buildSiguiente(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildSelectButton(BuildContext context) {
    return CustomTextFormField(
        controller: selectButtonController,
        hintText: "Seleccionar",
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 15.v, 18.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage24,
                height: 19.v,
                width: 25.h)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v),
        contentPadding: EdgeInsets.only(left: 21.h, top: 14.v, bottom: 14.v));
  }

  /// Section Widget
  Widget _buildStreetName(BuildContext context) {
    return CustomTextFormField(
        controller: streetNameController, hintText: "Calle");
  }

  /// Section Widget
  Widget _buildCityName(BuildContext context) {
    return CustomTextFormField(
        controller: cityNameController, hintText: "Municipio ");
  }

  /// Section Widget
  Widget _buildZipCode(BuildContext context) {
    return CustomTextFormField(controller: zipCodeController, hintText: "CP");
  }

  /// Section Widget
  Widget _buildStateName(BuildContext context) {
    return CustomTextFormField(
        controller: stateNameController,
        hintText: "Estado",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildSiguiente(BuildContext context) {
    return CustomElevatedButton(
        width: 182.h,
        text: "Siguiente",
        onPressed: () {
          onTapSiguiente(context);
        },
        alignment: Alignment.center);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapSiguiente(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
