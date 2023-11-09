import 'package:flutter/material.dart';
import 'package:nexblia/presentation/inicio_de_sesi_n_screen/inicio_de_sesi_n_screen.dart';
import 'package:nexblia/presentation/registrate_screen/registrate_screen.dart';
import 'package:nexblia/presentation/tarjetas_screen/tarjetas_screen.dart';
import 'package:nexblia/presentation/home_screen/home_screen.dart';
import 'package:nexblia/presentation/solicitud_de_servicio_screen/solicitud_de_servicio_screen.dart';
import 'package:nexblia/presentation/configuraci_n_de_cuenta_screen/configuraci_n_de_cuenta_screen.dart';
import 'package:nexblia/presentation/perfil_de_usuario_screen/perfil_de_usuario_screen.dart';
import 'package:nexblia/presentation/privacidad_y_seguridad_screen/privacidad_y_seguridad_screen.dart';
import 'package:nexblia/presentation/configuraci_n_screen/configuraci_n_screen.dart';
import 'package:nexblia/presentation/cuentas_vinculadas_screen/cuentas_vinculadas_screen.dart';
import 'package:nexblia/presentation/notificaciones_screen/notificaciones_screen.dart';
import 'package:nexblia/presentation/suscripciones_y_pagos_screen/suscripciones_y_pagos_screen.dart';
import 'package:nexblia/presentation/preguntas_y_respuestas_screen/preguntas_y_respuestas_screen.dart';
import 'package:nexblia/presentation/reportar_problema_screen/reportar_problema_screen.dart';
import 'package:nexblia/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String inicioDeSesiNScreen = '/inicio_de_sesi_n_screen';

  static const String registrateScreen = '/registrate_screen';

  static const String tarjetasScreen = '/tarjetas_screen';

  static const String homeScreen = '/home_screen';

  static const String solicitudDeServicioScreen =
      '/solicitud_de_servicio_screen';

  static const String configuraciNDeCuentaScreen =
      '/configuraci_n_de_cuenta_screen';

  static const String perfilDeUsuarioScreen = '/perfil_de_usuario_screen';

  static const String privacidadYSeguridadScreen =
      '/privacidad_y_seguridad_screen';

  static const String configuraciNScreen = '/configuraci_n_screen';

  static const String cuentasVinculadasScreen = '/cuentas_vinculadas_screen';

  static const String notificacionesScreen = '/notificaciones_screen';

  static const String suscripcionesYPagosScreen =
      '/suscripciones_y_pagos_screen';

  static const String preguntasYRespuestasScreen =
      '/preguntas_y_respuestas_screen';

  static const String reportarProblemaScreen = '/reportar_problema_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    inicioDeSesiNScreen: (context) => InicioDeSesiNScreen(),
    registrateScreen: (context) => RegistrateScreen(),
    tarjetasScreen: (context) => TarjetasScreen(),
    homeScreen: (context) => HomeScreen(),
    solicitudDeServicioScreen: (context) => SolicitudDeServicioScreen(),
    configuraciNDeCuentaScreen: (context) => ConfiguraciNDeCuentaScreen(),
    perfilDeUsuarioScreen: (context) => PerfilDeUsuarioScreen(),
    privacidadYSeguridadScreen: (context) => PrivacidadYSeguridadScreen(),
    configuraciNScreen: (context) => ConfiguraciNScreen(),
    cuentasVinculadasScreen: (context) => CuentasVinculadasScreen(),
    notificacionesScreen: (context) => NotificacionesScreen(),
    suscripcionesYPagosScreen: (context) => SuscripcionesYPagosScreen(),
    preguntasYRespuestasScreen: (context) => PreguntasYRespuestasScreen(),
    reportarProblemaScreen: (context) => ReportarProblemaScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
