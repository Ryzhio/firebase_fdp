import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/base/constants/error_messages.dart';
import 'package:firebase_fdp/src/features/domain/entities/auth/singup_entity/signup_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/auth/signup_use_case/signup_use_case.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/auth/signup_use_case/signup_use_case_parameters.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/decodables/auth_error_decodables.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';
import 'package:flutter_test/flutter_test.dart';

abstract class _Constants {
  static String correctEmail = "javier7@gmail.com";
  static String correctPass = "12345678";
  static String wrongEmail = "javier7@gmail.com";
  static String wrongPass = "123456789";
}

void main() {
  //GIVEN
  SignUpUseCase sut = DefaultSignUpUseCase();

  group('Test success SignUp user in Firebase', () {
    test('Test success signUp user Firebase', () async {
      final SignUpUseCaseParameters params = SignUpUseCaseParameters(
        email: _Constants.correctEmail,
        password: _Constants.correctPass,
        username: 'Ricardo Llacsa',
        date: '22/02/1998',
        phone: '999696958',
      );

      //WHEN
      final result = await sut.execute(params: params);

      switch (result.status) {
        case ResultStatus.success:
          //THEN
          expect(result.value, isA<SignUpEntity>());
          break;
        case ResultStatus.error:
          //THEN
          expect(result.error, Failure);
          break;
      }
    });
    // TODO: añadir más test
  });

  group('Test failure SignUp in Firebase', () {
    test('Test failure SingUp in Firebase', () async {
      try {
        //WHEN
        final SignUpUseCaseParameters params = SignUpUseCaseParameters(
          email: _Constants.wrongEmail,
          password: _Constants.wrongPass,
          username: 'Ricardo Llacsa Ja',
          date: '22/02/1998',
          phone: '999696958',
        );
        final _ = await sut.execute(params: params);
      } on Failure catch (f) {
        //THEN
        AuthErrorDecodable _error = f as AuthErrorDecodable;
        expect(_error.error!.message, FBFailureMessages.emailExistMessage);
      }
    });
  });
}
