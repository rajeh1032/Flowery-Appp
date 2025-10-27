import 'package:json_annotation/json_annotation.dart';

part 'about_style_model.g.dart';

@JsonSerializable()
class AboutStyleModel {
  final Map<String, dynamic>? title;
  final Map<String, dynamic>? content;
  final double? fontSize;
  final String? fontWeight;
  final String? color;
  final Map<String, String>? textAlign;
  final String? backgroundColor;

  AboutStyleModel({
    this.title,
    this.content,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.backgroundColor,
  });

  factory AboutStyleModel.fromJson(Map<String, dynamic> json) =>
      _$AboutStyleModelFromJson(json);

  Map<String, dynamic> toJson() => _$AboutStyleModelToJson(this);
}
