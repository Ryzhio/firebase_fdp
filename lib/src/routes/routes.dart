import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/16_lineas_navieras_page/view/lineas_navieras_page.dart';
import 'package:firebase_fdp/src/features/presentation/11_container_detail/view/container_detail.dart';
import 'package:firebase_fdp/src/features/presentation/14_operadores_logisticos_page/view/operadores_logisticos_page.dart';
import 'package:firebase_fdp/src/features/presentation/12_clientes_page/view/clientes_page.dart';
import 'package:firebase_fdp/src/features/presentation/08_envio_final_page/view/envio_final_page.dart';
import 'package:firebase_fdp/src/features/presentation/09_detail_container/view/detail_container_page.dart';
import 'package:firebase_fdp/src/features/presentation/filter_page/filter_page.dart';
import 'package:firebase_fdp/src/features/presentation/07_final_page/view/final_page.dart';
import 'package:firebase_fdp/src/features/presentation/forgot_password_page/view/forgot_password.dart';
import 'package:firebase_fdp/src/features/presentation/02_login_page/view/login_screen.dart';
import 'package:firebase_fdp/src/features/presentation/profile_detail_page/view/profile_detail_page.dart';
import 'package:firebase_fdp/src/features/presentation/03_signup_page/view/signup_screen.dart';
import 'package:firebase_fdp/src/features/presentation/04_tabs/tabs_page.dart';
import 'package:firebase_fdp/src/features/presentation/01_welcome_page/view/welcome_screen.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => const WelcomeScreen(),
  'login': (BuildContext context) => LoginScreen(),
  'signup': (BuildContext context) => SignUpScreen(),
  'forgot': (BuildContext context) => const ForgotPassword(),
  'perfild': (BuildContext context) => const ProfileDetailPage(),
  'menu': (BuildContext context) => const TabsPage(),
  'client': (BuildContext context) => const ClientePage(),
  'op': (BuildContext context) => const OperadoresLogisticosPage(),
  'lineasnavi': (BuildContext context) => const LineasNavierasPage(),
  'cdetail': (BuildContext context) => const ContainerDetail(),
  'finall': (BuildContext context) => const FinalPage(),
  'filter': (BuildContext context) => const FilterPage(),
  'envio': (BuildContext context) => const EnvioFinalPage(),
  'detail': (BuildContext context) => const DetailContainerPage(),
};
