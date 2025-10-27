import 'package:json_annotation/json_annotation.dart';

part 'terms_style_model.g.dart';

@JsonSerializable()
class TermsStyleModel {
  final Map<String, dynamic>? title;
  final Map<String, dynamic>? content;
  final double? fontSize;
  final String? fontWeight;
  final String? color;
  final Map<String, String>? textAlign;
  final String? backgroundColor;

  TermsStyleModel({
    this.title,
    this.content,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.backgroundColor,
  });

  factory TermsStyleModel.fromJson(Map<String, dynamic> json) =>
      _$TermsStyleModelFromJson(json);

  Map<String, dynamic> toJson() => _$TermsStyleModelToJson(this);
}
