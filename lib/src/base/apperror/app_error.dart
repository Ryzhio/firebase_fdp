import 'dart:convert';

import 'package:firebase_fdp/src/base/constants/error_messages.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/decodables/auth_error_decodables.dart';

class Failure {
  String? message;
  Map<String, dynamic> error = {};

  @override
  String toString() => message ?? "Hubo un error inesperado";

  Failure.fromMessage({String? message}) {
    this.message = message;
  }

  Failure.fromBody({required String body}) {
    var jsonData = jsonDecode(body);
    this.error = jsonData;
  }

  static Failure getFirebaseAuthErrorMessage(
      {required Map<String, dynamic> error}) {
    AuthErrorDecodable _errorDecodable = AuthErrorDecodable.fromMap(error);

    var message = "";
    _errorDecodable.error?.errors?.forEach((error) {
      message = error.message ?? "";
    });

    if (message == "EMAIL_NOT_FOUND") {
      return Failure.fromMessage(
          message: FBFailureMessages.emailNotFoundMessage);
    } else if (message == "INVALID_PASSWORD") {
      return Failure.fromMessage(
          message: FBFailureMessages.invalidPasswordMessage);
    } else if (message == "EMAIL_EXISTS") {
      return Failure.fromMessage(message: FBFailureMessages.emailExistMessage);
    } else if (message == "TOO_MANY_ATTEMPTS_TRY_LATER") {
      return Failure.fromMessage(
          message: FBFailureMessages.tooManyAttemptsMessage);
    } else if (message == "INVALID_ID_TOKEN") {
      return Failure.fromMessage(
          message: FBFailureMessages.invalidTokenMessage);
    } else if (message == "USER_NOT_FOUND") {
      return Failure.fromMessage(
          message: FBFailureMessages.userNotFoundMessage);
    } else {
      return Failure.fromMessage(message: message);
    }
  }
}
