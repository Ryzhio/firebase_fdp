import 'package:firebase_fdp/src/base/constants/local_storage_keys.dart';
import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/auth/singin_use_case/sign_in_use_case_body_parameters.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/auth/singin_use_case/sing_in_use_case.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/local_storage/local_storage_use_case_parameters.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/local_storage/save_local_storage_use_case.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/textFormField/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';
import 'package:firebase_fdp/src/features/presentation/02_login_page/model/login_model.dart';
import 'package:firebase_fdp/src/features/presentation/states_providers/loading_status_state_provider.dart';
import 'package:firebase_fdp/src/base/apperror/app_error.dart';

abstract class LoginViewModelInput {
  late GlobalKey<FormState> formkey = GlobalKey<FormState>();
  LoginModel? loginModel = LoginModel(email: '', password: '');

  Future<Result<bool, Failure>> login({
    required String email,
    required String password,
  });
  bool isFormValidate();
}

abstract class LoginViewModel extends LoginViewModelInput
    with TextFormFieldDelegate, BaseViewModel {}

class DefaultLoginViewModel extends LoginViewModel {
  //Dependencias
  //UseCases
  final SignInUseCase _signInUseCase;
  final SaveLocalStorageUseCase _saveLocalStorageUseCase;

  //Constructor
  DefaultLoginViewModel(
      {SignInUseCase? signInUseCase,
      SaveLocalStorageUseCase? saveLocalStorageUseCase})
      : _signInUseCase = signInUseCase ?? DefaultSignInUseCase(),
        _saveLocalStorageUseCase =
            saveLocalStorageUseCase ?? DefaultSaveLocalStorageUseCase();

  @override
  void initState({required LoadingStateProvider loadingStateProvider}) {
    loadingState = loadingStateProvider;
  }

  @override
  bool isFormValidate() {
    return formkey.currentState?.validate() ?? false;
  }

  @override
  Future<Result<bool, Failure>> login(
      {required String email, required String password}) {
    loadingState.setLoadingState(isLoading: true);

    return _signInUseCase
        .execute(
            params:
                SignInUseCaseBodyParameters(email: email, password: password))
        .then((result) {
      switch (result.status) {
        case ResultStatus.success:
          loadingState.setLoadingState(isLoading: false);
          _saveLocalStorageUseCase.execute(
              parameters: SaveLocalStorageParameters(
                  key: LocalStorageKeys.idToken,
                  value: result.value?.idToken ?? ""));
          return Result.success(true);
        case ResultStatus.error:
          loadingState.setLoadingState(isLoading: false);
          return Result.failure(result.error);
      }
    });
  }

  @override
  onChanged(
      {required String newValue,
      required CustomTextFormFieldType customTextFormFieldType}) {
    switch (customTextFormFieldType) {
      case CustomTextFormFieldType.email:
        loginModel?.email = newValue;
        break;
      case CustomTextFormFieldType.password:
        loginModel?.password = newValue;
        break;
      case CustomTextFormFieldType.phone:
        // TODO: Handle this case.
        break;
      case CustomTextFormFieldType.username:
        // TODO: Handle this case.
        break;
      case CustomTextFormFieldType.dateOfBirth:
        // TODO: Handle this case.
        break;
    }
  }
}
