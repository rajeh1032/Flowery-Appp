import 'package:flower_e_commerce_app/Feature/auth/domain/repositories/auth_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckUserLoggedInUseCase {
  final AuthRepo _repo;
  CheckUserLoggedInUseCase(this._repo);

  Future<bool> invoke() async {
    return await _repo.isLoggedIn();
  }
}
