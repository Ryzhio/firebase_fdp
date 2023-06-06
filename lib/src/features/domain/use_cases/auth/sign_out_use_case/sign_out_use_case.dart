import 'package:firebase_fdp/src/base/constants/local_storage_keys.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/local_storage/local_storage_use_case_parameters.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/local_storage/remove_local_storage_use_case.dart';

abstract class SignOutUseCase {
  Future<void> excecute();
}

class DefaultSignOutUseCase extends SignOutUseCase {
  //Dependencias
  final RemoveLocalStorageUseCase _removeLocalStorageUseCase;

  DefaultSignOutUseCase({RemoveLocalStorageUseCase? removeLocalStorageUseCase})
      : _removeLocalStorageUseCase =
            removeLocalStorageUseCase ?? DefaultRemoveLocalStorageUseCase();

  @override
  Future<void> excecute() async {
    return _removeLocalStorageUseCase.execute(
        parameters:
            RemoveLocalStorageParameters(key: LocalStorageKeys.idToken));
  }
}
