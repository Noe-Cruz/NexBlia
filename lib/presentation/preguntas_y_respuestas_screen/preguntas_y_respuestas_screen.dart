import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';
import 'package:nexblia/widgets/app_bar/appbar_leading_image.dart';
import 'package:nexblia/widgets/app_bar/appbar_subtitle.dart';
import 'package:nexblia/widgets/app_bar/custom_app_bar.dart';
import 'package:nexblia/widgets/custom_elevated_button.dart';
import 'package:nexblia/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PreguntasYRespuestasScreen extends StatelessWidget {
  PreguntasYRespuestasScreen({Key? key}) : super(key: key);

  TextEditingController reportTitleController = TextEditingController();

  TextEditingController problemDescriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 12.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 245.h,
                          margin: EdgeInsets.only(left: 15.h, right: 45.h),
                          child: Text(
                              "¿Qué medidas de seguridad se \nimplementan para proteger mis \ndatos?",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 18.v),
                      Container(
                          width: 207.h,
                          margin: EdgeInsets.only(left: 15.h),
                          child: Text(
                              "¿Cómo solicito un servicio\nrápido a domicilio?",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 15.v),
                      Container(
                          width: 213.h,
                          margin: EdgeInsets.only(left: 15.h),
                          child: Text(
                              "¿Cómo puedo cancelar una \nsolicitud de servicio?",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 35.v),
                      _buildFiftySeven(context),
                      SizedBox(height: 19.v),
                      _buildFiftySix(context),
                      SizedBox(height: 2.v)
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
        title: AppbarSubtitle(text: "Preguntas y Respuestas"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFiftySeven(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 18.v),
        decoration: AppDecoration.outlineBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder2),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text("¿Necesitas ayuda adicional?",
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 18.v),
              Container(
                  width: 264.h,
                  margin: EdgeInsets.only(left: 4.h),
                  child: Text(
                      "Si tienes alguna pregunta o problema\nque no se encuentre en nuestra \npreguntas frecuentes, no dudes en\nponerte en contacto con nuestro equipo\nde soporte",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumLight)),
              SizedBox(height: 23.v),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage12,
                        height: 17.v,
                        width: 25.h,
                        margin: EdgeInsets.only(bottom: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text("example@gmail.com",
                            style: CustomTextStyles.bodyMediumLight))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildFiftySix(BuildContext context) {
    return Container(
        width: 306.h,
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 17.v),
        decoration: AppDecoration.outlineBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder2),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 272.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: Text(
                      "¿Encontraste un problema o tienes \nuna sugerencia?",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 7.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: CustomTextFormField(
                      controller: reportTitleController,
                      hintText: "Reporte",
                      suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 8.v, 18.h, 6.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgImage24,
                              height: 15.v,
                              width: 20.h)),
                      suffixConstraints: BoxConstraints(maxHeight: 30.v),
                      contentPadding:
                          EdgeInsets.only(left: 18.h, top: 4.v, bottom: 4.v))),
              SizedBox(height: 17.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: CustomTextFormField(
                      controller: problemDescriptionController,
                      hintText: "Descripción del problema",
                      textInputAction: TextInputAction.done,
                      maxLines: 3)),
              SizedBox(height: 13.v),
              CustomElevatedButton(
                  width: 182.h,
                  text: "Enviar reporte",
                  margin: EdgeInsets.only(left: 15.h),
                  alignment: Alignment.centerLeft)
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
