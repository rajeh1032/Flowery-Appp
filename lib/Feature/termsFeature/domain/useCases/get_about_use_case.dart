import 'package:flower_e_commerce_app/Feature/termsFeature/domain/repositories/terms_about_repo.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/response/about_response_entity.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAboutUseCase {
  final TermsAboutRepo _repository;

  GetAboutUseCase({required TermsAboutRepo repository})
      : _repository = repository;

  Future<AboutResponseEntity> call() async {
    return await _repository.getAboutApp();
  }
}
