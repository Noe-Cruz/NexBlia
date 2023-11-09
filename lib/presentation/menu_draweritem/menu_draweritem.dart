import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';

class MenuDraweritem extends StatelessWidget {
  const MenuDraweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Drawer(
        child: Container(
            width: 265.h,
            decoration: AppDecoration.outlineBlack,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 53.h, vertical: 17.v),
                      decoration: AppDecoration.fillBlueA200,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 22.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse2,
                                height: 90.adaptSize,
                                width: 90.adaptSize,
                                radius: BorderRadius.circular(45.h)),
                            SizedBox(height: 24.v),
                            Text("example@gmail.com",
                                style: CustomTextStyles.bodyLargeInterWhiteA700)
                          ])),
                  SizedBox(height: 35.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtConfiguraciN(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 50.h),
                          child: Text("Configuración",
                              style: CustomTextStyles.bodyLargeInterBlack900))),
                  SizedBox(height: 24.v),
                  Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                          onTap: () {
                            onTapTxtPreguntasyrespuestas(context);
                          },
                          child: Text("Preguntas y respuestas",
                              style: CustomTextStyles.bodyLargeInterBlack900))),
                  SizedBox(height: 23.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtMistarjetas(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 53.h),
                          child: Text("Mis tarjetas",
                              style: CustomTextStyles.bodyLargeInterBlack900))),
                  SizedBox(height: 22.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtCerrarSesiN(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 50.h),
                          child: Text("Cerrar sesión",
                              style: CustomTextStyles.bodyLargeInterBlack900))),
                  SizedBox(height: 22.v)
                ])));
  }

  /// Navigates to the configuraciNScreen when the action is triggered.
  onTapTxtConfiguraciN(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.configuraciNScreen);
  }

  /// Navigates to the preguntasYRespuestasScreen when the action is triggered.
  onTapTxtPreguntasyrespuestas(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.preguntasYRespuestasScreen);
  }

  /// Navigates to the tarjetasScreen when the action is triggered.
  onTapTxtMistarjetas(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tarjetasScreen);
  }

  /// Navigates to the inicioDeSesiNScreen when the action is triggered.
  onTapTxtCerrarSesiN(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.inicioDeSesiNScreen);
  }
}
