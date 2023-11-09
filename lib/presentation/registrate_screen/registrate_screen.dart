import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';
import 'package:nexblia/widgets/custom_elevated_button.dart';
import 'package:nexblia/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistrateScreen extends StatelessWidget {
  RegistrateScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController zipCodeController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blue100,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 41.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage26,
                          height: 71.v,
                          width: 164.h,
                          margin: EdgeInsets.only(left: 49.h)),
                      SizedBox(height: 42.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("Nombre",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 4.v),
                      _buildFirstName(context),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text("Apellidos",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 3.v),
                      _buildLastName(context),
                      SizedBox(height: 4.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("CP",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 4.v),
                      _buildZipCode(context),
                      SizedBox(height: 4.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("Estado",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 4.v),
                      _buildState(context),
                      SizedBox(height: 3.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("No. de teléfono  ",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 4.v),
                      _buildPhoneNumber(context),
                      SizedBox(height: 4.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("Correo",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 4.v),
                      _buildEmail(context),
                      SizedBox(height: 59.v),
                      _buildSiguiente(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return CustomTextFormField(
        controller: firstNameController, hintText: "Nombre");
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return CustomTextFormField(
        controller: lastNameController, hintText: "Apellidos");
  }

  /// Section Widget
  Widget _buildZipCode(BuildContext context) {
    return CustomTextFormField(controller: zipCodeController, hintText: "CP");
  }

  /// Section Widget
  Widget _buildState(BuildContext context) {
    return CustomTextFormField(controller: stateController, hintText: "Estado");
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
        controller: phoneNumberController, hintText: "No. de teléfono");
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Correo",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildSiguiente(BuildContext context) {
    return CustomElevatedButton(
        width: 182.h,
        text: "Siguiente ",
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
