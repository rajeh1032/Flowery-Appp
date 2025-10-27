
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/response/about_response_entity.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/response/terms_response_entity.dart';

abstract interface class TermsAboutLocalDataSource {
  Future<TermsResponseEntity> getTermsAndConditions();
  Future<AboutResponseEntity> getAboutApp();
}
