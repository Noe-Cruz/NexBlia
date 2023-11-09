import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';
import 'package:nexblia/widgets/app_bar/appbar_leading_image.dart';
import 'package:nexblia/widgets/app_bar/appbar_subtitle.dart';
import 'package:nexblia/widgets/app_bar/custom_app_bar.dart';

class ConfiguraciNDeCuentaScreen extends StatelessWidget {
  const ConfiguraciNDeCuentaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 36.v),
                child: Column(children: [
                  _buildTwentyFour(context),
                  SizedBox(height: 45.v),
                  _buildTwentyThree(context),
                  SizedBox(height: 4.v)
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
            text: "Configuración de la cuenta",
            margin: EdgeInsets.only(left: 32.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTwentyFour(BuildContext context) {
    return Container(
        width: 306.h,
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder2),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Opciones de Cuenta", style: theme.textTheme.titleMedium),
              SizedBox(height: 32.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage23,
                            height: 26.v,
                            width: 25.h),
                        GestureDetector(
                            onTap: () {
                              onTapTxtPerfilDeUsuario(context);
                            },
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 42.h, bottom: 7.v),
                                child: Text("Perfil de Usuario",
                                    style: CustomTextStyles
                                        .bodyLargeInterBlack900)))
                      ])),
              SizedBox(height: 24.v),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h, right: 21.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage14,
                                height: 23.v,
                                width: 25.h),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtPrivacidadySeguridad(context);
                                },
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 42.h, top: 3.v),
                                    child: Text("Privacidad y Seguridad",
                                        style: CustomTextStyles
                                            .bodyLargeInterBlack900)))
                          ]))),
              SizedBox(height: 31.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage20,
                        height: 20.v,
                        width: 25.h),
                    GestureDetector(
                        onTap: () {
                          onTapTxtNotificaciones(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 42.h),
                            child: Text("Notificaciones",
                                style:
                                    CustomTextStyles.bodyLargeInterBlack900)))
                  ])),
              SizedBox(height: 31.v)
            ]));
  }

  /// Section Widget
  Widget _buildTwentyThree(BuildContext context) {
    return Container(
        width: 306.h,
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder2),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Opciones Adicionales", style: theme.textTheme.titleMedium),
              SizedBox(height: 32.v),
              Padding(
                  padding: EdgeInsets.only(left: 17.h, right: 44.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage23,
                            height: 26.v,
                            width: 25.h),
                        GestureDetector(
                            onTap: () {
                              onTapTxtCuentasVinculadas(context);
                            },
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 42.h, bottom: 7.v),
                                child: Text("Cuentas Vinculadas",
                                    style: CustomTextStyles
                                        .bodyLargeInterBlack900)))
                      ])),
              SizedBox(height: 27.v),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 17.h, right: 14.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage22,
                                height: 16.v,
                                width: 25.h,
                                margin: EdgeInsets.only(top: 1.v, bottom: 2.v)),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtSubscripcionesY(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(left: 42.h),
                                    child: Text("Subscripciones y Pagos",
                                        style: CustomTextStyles
                                            .bodyLargeInterBlack900)))
                          ]))),
              SizedBox(height: 32.v),
              Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage8,
                        height: 21.v,
                        width: 25.h,
                        margin: EdgeInsets.only(top: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 42.h, bottom: 3.v),
                        child: Text("Eliminar Cuenta",
                            style: CustomTextStyles.bodyLargeInterBlack900))
                  ])),
              SizedBox(height: 30.v),
              Padding(
                  padding: EdgeInsets.only(left: 17.h, right: 28.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage1322x25,
                            height: 22.v,
                            width: 25.h,
                            margin: EdgeInsets.only(bottom: 19.v)),
                        Expanded(
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtReportarProblema(context);
                                },
                                child: Container(
                                    width: 163.h,
                                    margin: EdgeInsets.only(left: 42.h),
                                    child: Text(
                                        "Reportar Problema de \nSeguridad",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyLargeInterBlack900))))
                      ])),
              SizedBox(height: 5.v)
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the perfilDeUsuarioScreen when the action is triggered.
  onTapTxtPerfilDeUsuario(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.perfilDeUsuarioScreen);
  }

  /// Navigates to the privacidadYSeguridadScreen when the action is triggered.
  onTapTxtPrivacidadySeguridad(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.privacidadYSeguridadScreen);
  }

  /// Navigates to the notificacionesScreen when the action is triggered.
  onTapTxtNotificaciones(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificacionesScreen);
  }

  /// Navigates to the cuentasVinculadasScreen when the action is triggered.
  onTapTxtCuentasVinculadas(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cuentasVinculadasScreen);
  }

  /// Navigates to the suscripcionesYPagosScreen when the action is triggered.
  onTapTxtSubscripcionesY(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.suscripcionesYPagosScreen);
  }

  /// Navigates to the reportarProblemaScreen when the action is triggered.
  onTapTxtReportarProblema(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reportarProblemaScreen);
  }
}
