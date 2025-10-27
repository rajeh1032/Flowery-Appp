import 'package:flower_e_commerce_app/Feature/termsFeature/api/model/terms_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'terms_response_model.g.dart';

@JsonSerializable()
class TermsResponseModel {
  @JsonKey(name: 'terms_and_conditions') // Map JSON key to field
  final List<TermsModel>? termsAndConditions;

  TermsResponseModel({required this.termsAndConditions});

  factory TermsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TermsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$TermsResponseModelToJson(this);
}
