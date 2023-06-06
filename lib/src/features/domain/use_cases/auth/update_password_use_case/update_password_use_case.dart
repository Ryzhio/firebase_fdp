import 'package:firebase_fdp/src/features/data/repositorys/auth/update_password/update_password_repository.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';

abstract class UpdatePasswordUseCase {
  Future<void> excecute({required String email});
}

class DefaulUpdatePasswordUseCase extends UpdatePasswordUseCase {
  //Dependencias

  UpdatePasswordRepository _updatePasswordRepository;

  DefaulUpdatePasswordUseCase(
      {UpdatePasswordRepository? updatePasswordRepository})
      : _updatePasswordRepository =
            updatePasswordRepository ?? DefaultUpdatePasswordRepository();

  @override
  Future<void> excecute({required String email}) {
    return _updatePasswordRepository.updatePassword(email: email);
  }
}
