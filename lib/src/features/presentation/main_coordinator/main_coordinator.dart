import 'package:firebase_fdp/src/features/domain/entities/conte/conte_entity.dart';
import 'package:firebase_fdp/src/features/presentation/07.1_final_page/view/final_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/domain/entities/clientes/clientes_entity.dart';
import 'package:firebase_fdp/src/features/domain/entities/logisticos/logisticos_entity.dart';
import 'package:firebase_fdp/src/features/domain/entities/navieras/navieras_entity.dart';
import 'package:firebase_fdp/src/features/presentation/13_detail_cliente/view/detail_cliente.dart';
import 'package:firebase_fdp/src/features/presentation/13_detail_cliente/view_models/clien_view_model.dart';
import 'package:firebase_fdp/src/features/presentation/15_detail_op_page/view/detail_op_page.dart';
import 'package:firebase_fdp/src/features/presentation/15_detail_op_page/view_model/op_view_model.dart';
import 'package:firebase_fdp/src/features/presentation/17_detail_ln_page/view/detail_ln_page.dart';
import 'package:firebase_fdp/src/features/presentation/17_detail_ln_page/view_model/navi_view_model.dart';
import 'package:firebase_fdp/src/base/constants/local_storage_keys.dart';
import 'package:firebase_fdp/src/features/domain/entities/campaigns/campaigns_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/local_storage/fetch_local_storage_use_case.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/local_storage/local_storage_use_case_parameters.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/user/validate_current_user_use_case/validate_current_user_use_case.dart';
import 'package:firebase_fdp/src/features/presentation/06_campaign_sub/view/campaign_sub.dart';
import 'package:firebase_fdp/src/features/presentation/06_campaign_sub/viewModel/campaign_sub_view_model.dart';

class RoutesPath {
  static String welcomePath = 'welcome';
  static String tabsPath = 'menu';
}

class MainCoordinator {
  //Dependencias
  final FetchLocalStorageUseCase _fetchLocalStorageUseCase;
  final ValidateCurrentUserUseCase _validateCurrentUserCase;

  MainCoordinator(
      {FetchLocalStorageUseCase? fetchLocalStorageUseCase,
      ValidateCurrentUserUseCase? validateCurrentUserCase})
      : _fetchLocalStorageUseCase =
            fetchLocalStorageUseCase ?? DefaultFetchLocalStorageUseCase(),
        _validateCurrentUserCase =
            validateCurrentUserCase ?? DefaultValidateCurrentUserUseCase();

  Future<String?> start() {
    return _isUserLogged().then((value) {
      return value == null ? RoutesPath.welcomePath : RoutesPath.tabsPath;
    });
  }

  Future<String?> _isUserLogged() async {
    var idToken = await _fetchLocalStorageUseCase.execute(
        parameters: FetchLocalStorageParameters(key: LocalStorageKeys.idToken));

    //Revisar si el usuario esta guardado
    if (idToken == null) {
      return null;
    }
    //Hay un token guardado y vamos a comprobar que el usuario exista aun en firebase.
    var isUserValid = await _validateCurrentUserCase.execute(idToken: idToken);

    if (isUserValid) {
      return idToken;
    } else {
      return null;
    }
  }

  showCampaignSub({
    required BuildContext context,
    required CampaignDetailEntity campaign,
  }) {
    Navigator.push(
        context,
        PageRouteBuilder(
            pageBuilder: (_, __, ___) => CampaignSub(
                  campaignSubViewModel:
                      DefaultCampaignSubViewModel(campaign: campaign),
                ),
            transitionDuration: const Duration(seconds: 0)));
  }

  showOp({
    required BuildContext context,
    required LogisticosDetailEntity logisticos,
  }) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => DetailOPPage(
          opViewModel: DefaultOpViewModel(logisticos: logisticos),
        ),
        transitionDuration: const Duration(seconds: 0),
      ),
    );
  }

  showNavi({
    required BuildContext context,
    required NavierasDetailEntity navieras,
  }) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => DetailLnPage(
          naviViewModel: DefaultNaviViewModel(navieras: navieras),
        ),
        transitionDuration: const Duration(seconds: 0),
      ),
    );
  }

  showClien({
    required BuildContext context,
    required ClientesDetailEntity clientes,
  }) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => DetailCliente(
          clienViewModel: DefaultClienViewModel(clientes: clientes),
        ),
        transitionDuration: const Duration(seconds: 0),
      ),
    );
  }

  showConteListView({
    required BuildContext context,
    required List<ConteListDetailEntity> conteList,
  }) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => FinalScreen(conteList: conteList),
        transitionDuration: const Duration(seconds: 0),
      ),
    );
  }
}
