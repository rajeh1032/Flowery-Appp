import 'package:json_annotation/json_annotation.dart';
import 'about_style_model.dart';

part 'about_model.g.dart';

@JsonSerializable()
class AboutModel {
  final String ?section;
  final Map<String, dynamic>? title;
  final Map<String, dynamic> ?content;
  final AboutStyleModel ?style;

  AboutModel({
    required this.section,
    this.title,
    required this.content,
    required this.style,
  });

  factory AboutModel.fromJson(Map<String, dynamic> json) =>
      _$AboutModelFromJson(json);
  Map<String, dynamic> toJson() => _$AboutModelToJson(this);
}
