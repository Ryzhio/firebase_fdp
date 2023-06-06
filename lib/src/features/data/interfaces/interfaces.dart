import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/features/data/decodables/auth/user_auth_data/user_auth_data_decodable.dart';
import 'package:firebase_fdp/src/features/data/decodables/campaigns_decodable/campaigns_decodable.dart';
import 'package:firebase_fdp/src/features/data/decodables/clientes_decodable/clientes_decodables.dart';
import 'package:firebase_fdp/src/features/data/decodables/containerpage_decodable/containerpage_decodable.dart';
import 'package:firebase_fdp/src/features/data/decodables/containerpagecountry_decodable/containerpagecountry_decodable.dart';
import 'package:firebase_fdp/src/features/data/decodables/contenedores/contenedores_decodable.dart';
import 'package:firebase_fdp/src/features/data/decodables/logisticos_decodable/logisticos_decodable.dart';
import 'package:firebase_fdp/src/features/data/decodables/navieras_decodable/navieras_decodables.dart';
import 'package:firebase_fdp/src/features/data/decodables/user/user_decodable.dart';
import 'package:firebase_fdp/src/features/data/repositorys/auth/signin_repository/sign_in_body_parameters.dart';
import 'package:firebase_fdp/src/features/data/repositorys/auth/signup_repository/signup_repository_parameters.dart';
import 'package:firebase_fdp/src/features/data/repositorys/auth/user_auth_data/user_auth_data_repository_body_parameters.dart';
import 'package:firebase_fdp/src/features/data/repositorys/user/user_body_parameters.dart';
import 'package:firebase_fdp/src/managers/clien_manager/decodables/clien_list_decodable.dart';
import 'package:firebase_fdp/src/managers/container_manager/decodables/container_list_decodable.dart';
import 'package:firebase_fdp/src/managers/conte_manager/decodables/conte_list_decodable.dart';
import 'package:firebase_fdp/src/managers/navi_manager/decodables/navi_list_decodable.dart';
import 'package:firebase_fdp/src/managers/op_manager/decodables/op_list_decodable.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/decodables/signin_decodables.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/decodables/signup_decodables.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/decodables/update_password_decodable.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';

//Auth Repositories
abstract class SignInRepository {
  Future<Result<SignInDecodable, Failure>> signIn(
      {required SignInBodyParameters params});
}

abstract class SignUpRepository {
  Future<Result<SignUpDecodable, Failure>> signUp(
      {required SignUpRepositoryParameters params});
}

abstract class UpdatePasswordRepository {
  Future<Result<UpdatePasswordDecodable, Failure>> updatePassword(
      {required String email});
}

abstract class UserAuthDataRepository {
  Future<Result<UserAuthDataDecodable, Failure>> getUserAuthData(
      {required GetUserDataBodyParameters parameters});
}

//User Database Repositories
abstract class SaveUserDataRepository {
  Future<Result<UserDecodable, Failure>> saveUserData(
      {required UserBodyParameters parameters});
}

abstract class FetchUserDataRepository {
  Future<Result<UserDecodable, Failure>> fetchUserData(
      {required String localId});
}

// Local Storage
abstract class SaveLocalStorageRepository {
  Future<void> saveInLocalStorage({required String key, required String value});
  Future<void> saveRecentSearchInLocalStorage(
      {required String key, required List<String> value});
}

abstract class FetchLocalStorageRepository {
  Future<String?> fetchInLocalStorage({required String key});
  Future<List<String>?> fetchRecentSearches();
}

abstract class RemoveLocalStorageRepository {
  Future<void> removeInLocalStorage({required String key});
}

// * Campaigns Repository
abstract class CampaignsRepository {
  Future<CampaignsDecodable> fetchCampaigns();
}

// LIst para detalles

// * ContainerList Repository
abstract class ContainerListRepository {
  Future<ContainerListDecodable> fetchPopularContainerList();
  Future<ContainerListDecodable> fetchContainerList();
  Future<ContainerListDecodable> fetchContainerListByCategory(
      {required int categoryId});
}

//List OPERADORES LOGISTICOS

// * OPList Repository
abstract class OpListRepository {
  Future<OpListDecodable> fetchPopularOpList();
  Future<OpListDecodable> fetchOpList();
  Future<OpListDecodable> fetchOpListByCategory({required int categoId});
}

//List LINEAS NAVIERAS

// * NaviList Repository
abstract class NaviListRepository {
  Future<NaviListDecodable> fetchPopularNaviList();
  Future<NaviListDecodable> fetchNaviList();
  Future<NaviListDecodable> fetchNaviListByCategory({required int categoId});
}

//List CLIENTES DETAIL

// * CienList Repository
abstract class ClienListRepository {
  Future<ClienListDecodable> fetchPopularClienList();
  Future<ClienListDecodable> fetchClienList();
  Future<ClienListDecodable> fetchClienListByCategory({required int categoId});
}

//CONTAINERPAGE POR PAIS

// * CONTAINERPAGE REPOSITORY

abstract class ContainersPageRepository {
  Future<ContainersPageDecodable> fetchContainersPage();
}

// * CONTAINERPAGECOUNTRY REPOSITORY

abstract class ContainersPageCountryRepository {
  Future<ContainersPageCountryDecodable> fetchContainersPageCountry();
}

// * LOGISTICOS REPOSITORY

abstract class LogisticosRepository {
  Future<LogisticosDecodable> fetchLogisticos();
}

// * NAVIERAS REPOSITORY

abstract class NavierasRepository {
  Future<NavierasDecodable> fetchNavieras();
}

// * CLIENTES REPOSITORY

abstract class ClientesRepository {
  Future<ClientesDecodable> fetchClientes();
}

// * CONTENEDORES REPOSITORY

abstract class ContenedoresRepository {
  Future<ContenedoresDecodable> fetchContenedores();
}

// * CONTE REPOSITORY

abstract class ConteListRepository {
  Future<ConteListDecodable> fetchConteList();
  Future<ConteListDecodable> fetchPopularConteList();
  Future<ConteListDecodable> fetchConteListByCategory({required int categoId});
  Future<ConteListDecodable> fetchConteListByQuery({required String query});
  Future<ConteListDecodable> fetchConteListByRecentSearches(
      {required List<String> conteIds});
}
