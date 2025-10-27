import 'package:json_annotation/json_annotation.dart';
import 'terms_style_model.dart';

part 'terms_model.g.dart';

@JsonSerializable()
class TermsModel {
  final String? section;
  final Map<String, dynamic>? title;
  final Map<String, dynamic> ?content;
  final TermsStyleModel ?style;

  TermsModel({
    required this.section,
    this.title,
    required this.content,
    required this.style,
  });

  factory TermsModel.fromJson(Map<String, dynamic> json) =>
      _$TermsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TermsModelToJson(this);
}
