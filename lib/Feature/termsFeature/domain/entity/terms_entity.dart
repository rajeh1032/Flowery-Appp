import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/terms_style_entity.dart';

class TermsEntity {
  final String section;
  final Map<String, dynamic>? title;
  final Map<String, dynamic> content;
  final TermsStyleEntity style;

  const TermsEntity({
    required this.section,
    this.title,
    required this.content,
    required this.style,
  });
}
