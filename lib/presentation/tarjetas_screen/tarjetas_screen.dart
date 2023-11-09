import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';
import 'package:nexblia/widgets/custom_elevated_button.dart';
import 'package:nexblia/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class TarjetasScreen extends StatelessWidget {
  TarjetasScreen({Key? key}) : super(key: key);

  TextEditingController cardHolderNameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirationDateController = TextEditingController();

  TextEditingController securityCodeController = TextEditingController();

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
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 50.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("Agrega tu Tarjeta",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 25.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage26,
                          height: 71.v,
                          width: 164.h,
                          alignment: Alignment.center),
                      SizedBox(height: 56.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("Nombre del titular ",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 4.v),
                      _buildCardHolderName(context),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("No. de Tarjeta",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 3.v),
                      _buildCardNumber(context),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("Fecha de expiración",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 3.v),
                      _buildExpirationDate(context),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("Código de seguridad",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 3.v),
                      _buildSecurityCode(context),
                      SizedBox(height: 3.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("Correo  ",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 4.v),
                      _buildEmail(context),
                      SizedBox(height: 56.v),
                      _buildGuardar(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildCardHolderName(BuildContext context) {
    return CustomTextFormField(
        controller: cardHolderNameController, hintText: "Nombre del titular");
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return CustomTextFormField(
        controller: cardNumberController, hintText: "No. de Tarjeta");
  }

  /// Section Widget
  Widget _buildExpirationDate(BuildContext context) {
    return CustomTextFormField(
        controller: expirationDateController, hintText: "Fecha de expiración ");
  }

  /// Section Widget
  Widget _buildSecurityCode(BuildContext context) {
    return CustomTextFormField(
        controller: securityCodeController, hintText: "Código de seguridad");
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Correo",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildGuardar(BuildContext context) {
    return CustomElevatedButton(
        width: 182.h,
        text: "Guardar ",
        onPressed: () {
          onTapGuardar(context);
        },
        alignment: Alignment.center);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapGuardar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
