import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          registrate: "Inicio de Sesión",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.inicioDeSesiNScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          registrate: "Registrate",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registrateScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          registrate: "Tarjetas",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.tarjetasScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          registrate: "Home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          registrate: "Solicitud de Servicio",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.solicitudDeServicioScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          registrate: "Configuración de Cuenta",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.configuraciNDeCuentaScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          registrate: "Perfil de Usuario",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.perfilDeUsuarioScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          registrate: "Privacidad y Seguridad",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.privacidadYSeguridadScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          registrate: "Configuración",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.configuraciNScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          registrate: "Cuentas Vinculadas",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cuentasVinculadasScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          registrate: "Notificaciones",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificacionesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          registrate: "Suscripciones y Pagos",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.suscripcionesYPagosScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          registrate: "Preguntas y Respuestas ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.preguntasYRespuestasScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          registrate: "Reportar Problema",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.reportarProblemaScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String registrate,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  registrate,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
