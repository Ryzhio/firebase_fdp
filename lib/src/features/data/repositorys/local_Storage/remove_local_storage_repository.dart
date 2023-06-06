import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DefaultRemoveLocalStorageRepository extends RemoveLocalStorageRepository {
  //Dependencias
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Future<void> removeInLocalStorage({required String key}) async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove(key);
  }
}
