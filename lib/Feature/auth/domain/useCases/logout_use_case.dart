import 'package:flower_e_commerce_app/Feature/auth/domain/entities/response/logout_response_entity.dart';
import 'package:flower_e_commerce_app/Feature/auth/domain/repositories/auth_repo.dart';
import 'package:flower_e_commerce_app/core/Errors/api_results.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase {
  final AuthRepo _authRepo;
  LogoutUseCase(this._authRepo);

  Future<ApiResult<LogoutResponseEntity>> invoke() => _authRepo.logout();
}
