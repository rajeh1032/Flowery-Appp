import 'package:flower_e_commerce_app/Feature/termsFeature/api/model/about_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'about_response_model.g.dart';

@JsonSerializable()
class AboutResponseModel {
  @JsonKey(name: 'about_app')
  final List<AboutModel>? aboutApp;

  AboutResponseModel({required this.aboutApp});

  factory AboutResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AboutResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AboutResponseModelToJson(this);
}
