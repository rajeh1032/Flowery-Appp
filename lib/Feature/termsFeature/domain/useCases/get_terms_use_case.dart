import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/response/terms_response_entity.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/repositories/terms_about_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTermsUseCase {
  final TermsAboutRepo _repository;

  GetTermsUseCase({required TermsAboutRepo repository})
      : _repository = repository;

  Future<TermsResponseEntity> call() async {
    return await _repository.getTermsAndConditions();
  }
}
