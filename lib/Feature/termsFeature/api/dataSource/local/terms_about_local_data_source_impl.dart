import 'dart:convert';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_constants.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/api/model/response/about_response_model.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/api/model/response/terms_response_model.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/api/mapper/about_mapper.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/api/mapper/terms_mapper.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/response/about_response_entity.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/response/terms_response_entity.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/data/dataSources/terms_about_local_data_source.dart';

@Injectable(as: TermsAboutLocalDataSource)
class TermsAboutLocalDataSourceImpl implements TermsAboutLocalDataSource {
  const TermsAboutLocalDataSourceImpl();

  @override
  Future<TermsResponseEntity> getTermsAndConditions() async {
    try {
      final jsonString =
          await rootBundle.loadString(AppConstants.termsConditionsJsonFilePath);

      final Map<String, dynamic> jsonData = json.decode(jsonString);

      final model = TermsResponseModel.fromJson(jsonData);
      return model.toEntity();
    } catch (e) {
      throw Exception('Failed to load terms and conditions: $e');
    }
  }

  @override
  Future<AboutResponseEntity> getAboutApp() async {
    try {
      final jsonString =
          await rootBundle.loadString(AppConstants.aboutUsJsonFilePath);

      final Map<String, dynamic> jsonData = json.decode(jsonString);

      final model = AboutResponseModel.fromJson(jsonData);
      return model.toEntity();
    } catch (e) {
      throw Exception('Failed to load about app: $e');
    }
  }
}
