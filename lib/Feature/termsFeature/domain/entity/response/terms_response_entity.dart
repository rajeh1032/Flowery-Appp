import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/terms_entity.dart';

class TermsResponseEntity {
  final List<TermsEntity> termsAndConditions;

  const TermsResponseEntity({
    required this.termsAndConditions,
  });
}
