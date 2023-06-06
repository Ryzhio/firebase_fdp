abstract class AppFailureMessage {
  //Error Messages
  static String unExpctedErrorMessage = "Ha ocurrido un error inesperado.";
}

abstract class FBFailureMessages {
  //Error Messages

  static String emailNotFoundMessage =
      "There is no user record correspondind to this identifier. The user may have been deleted.";
  static String invalidPasswordMessage =
      "There password is invalid or the user does not have a password.";
  static String emailExistMessage =
      "La dirección de correo electronico ya esta siendo usada por otra persona.";
  static String tooManyAttemptsMessage =
      "Hemos bloqueado todas las solicitudes de este dispositivo debido a una actividad inusual. Vuelve a intentarlo más tarde.";
  static String invalidTokenMessage =
      "La credencial del usuario ya no es válida. Él usuario debe iniciar sesión nuevamente.";
  static String userNotFoundMessage =
      "No hay ningún registro de usuario que corresponda a este identificador. Es posible que se haya eliminado al usuario.";
}
