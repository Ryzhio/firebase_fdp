import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/base/constants/error_messages.dart';
import 'package:firebase_fdp/src/features/domain/entities/auth/singin_entity/sign_in_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/auth/singin_use_case/sign_in_use_case_body_parameters.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/auth/singin_use_case/sing_in_use_case.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/decodables/auth_error_decodables.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';
import 'package:flutter_test/flutter_test.dart';

abstract class _Constants {
  static String correctEmail = "javier7@gmail.com";
  static String correctPass = "1234567890";
  static String wrongEmail = "javier8@gmail.com";
  static String wrongPass = "12345678";
}

void main() {
  //GIVEN
  final SignInUseCase sut = DefaultSignInUseCase();

  group('Test success response to SignInUseCase', () {
    test('Test success signIn feature with correct email and password',
        () async {
      //GIVEN
      final SignInUseCaseBodyParameters _params = SignInUseCaseBodyParameters(
          email: _Constants.correctEmail, password: _Constants.correctPass);
      var result = await sut.execute(params: _params);
      switch (result.status) {
        //THEN
        case ResultStatus.success:
          expect(result.value, isA<SignInEntity>());
          break;
        case ResultStatus.error:
          //THEN
          expect(result.error, Failure);
          break;
      }
    });
  });
  group('Test failure response to SignInUseCase', () {
    test('Test failure response to SignInUseCase', () async {
      //GIVEN
      final SignInUseCaseBodyParameters _params = SignInUseCaseBodyParameters(
          email: _Constants.wrongEmail, password: _Constants.wrongPass);
      try {
        final _ = await sut.execute(params: _params);
      } on Failure catch (f) {
        AuthErrorDecodable _error = f as AuthErrorDecodable;
        //THEN
        expect(_error.error!.message, FBFailureMessages.emailNotFoundMessage);
      }
    });

    test('Test failure response to SignInUseCase with wrong password',
        () async {
      //GIVEN
      final SignInUseCaseBodyParameters _params = SignInUseCaseBodyParameters(
          email: _Constants.correctEmail, password: _Constants.wrongPass);
      try {
        final _ = await sut.execute(params: _params);
      } on Failure catch (f) {
        AuthErrorDecodable _error = f as AuthErrorDecodable;
        //THEN
        expect(_error.error!.message, FBFailureMessages.invalidPasswordMessage);
      }
    });
  });
}
