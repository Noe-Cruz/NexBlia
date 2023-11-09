import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:nexblia/core/app_export.dart';
import 'package:nexblia/widgets/custom_elevated_button.dart';
import 'package:nexblia/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNScreen extends StatelessWidget {
  InicioDeSesiNScreen({Key? key}) : super(key: key);

  TextEditingController passwordPlaceholderController = TextEditingController();

  TextEditingController emailPlaceholderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 49.h, vertical: 188.v),
                          decoration: AppDecoration.outlineBlue,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage26,
                                height: 71.v,
                                width: 164.h),
                            SizedBox(height: 5.v),
                            Text("SERVICIO AL INSTANTE",
                                style: CustomTextStyles.bodyLargeTeal900),
                            SizedBox(height: 48.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Correo",
                                    style: CustomTextStyles.bodyLargeBlack900)),
                            SizedBox(height: 81.v)
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.h, vertical: 63.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup12),
                                  fit: BoxFit.cover)),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Contraseña",
                                        style: CustomTextStyles
                                            .bodyLargeBlack900))),
                            SizedBox(height: 4.v),
                            CustomTextFormField(
                                controller: passwordPlaceholderController,
                                hintText: "Contraseña",
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineBlack,
                                fillColor: appTheme.whiteA700),
                            SizedBox(height: 53.v),
                            CustomElevatedButton(
                                width: 182.h,
                                text: "Iniciar Sesión",
                                onPressed: () {
                                  onTapIniciarSesin(context);
                                }),
                            SizedBox(height: 29.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("¿No tienes una cuenta?",
                                      style:
                                          CustomTextStyles.bodyLargeBlack90016),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtRegstrateaqu(context);
                                      },
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Regístrate",
                                                style: CustomTextStyles
                                                    .bodyLargeBlue900),
                                            TextSpan(text: " "),
                                            TextSpan(
                                                text: "aquí",
                                                style: CustomTextStyles
                                                    .bodyLargeBlue900)
                                          ]),
                                          textAlign: TextAlign.left))
                                ]),
                            SizedBox(height: 93.v)
                          ]))),
                  Padding(
                      padding: EdgeInsets.only(top: 360.v),
                      child: CustomTextFormField(
                          width: 280.h,
                          controller: emailPlaceholderController,
                          hintText: "Correo",
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.topCenter))
                ]))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapIniciarSesin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the registrateScreen when the action is triggered.
  onTapTxtRegstrateaqu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registrateScreen);
  }
}
