import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/about_style_entity.dart';

class AboutEntity {
  final String section;
  final Map<String, dynamic>? title;
  final Map<String, dynamic> content;
  final AboutStyleEntity style;

  const AboutEntity({
    required this.section,
    this.title,
    required this.content,
    required this.style,
  });
}
