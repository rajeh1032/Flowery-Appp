import 'package:flower_e_commerce_app/Feature/termsFeature/api/model/response/terms_response_model.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/api/model/terms_model.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/api/model/terms_style_model.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/response/terms_response_entity.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/terms_entity.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/terms_style_entity.dart';

extension TermsModelMapper on TermsModel {
  TermsEntity toEntity() => TermsEntity(
        section: section ?? "",
        title: title ?? {},
        content: content ?? {},
        style: style?.toEntity() ??
            TermsStyleEntity(
              title: null,
              content: null,
              fontSize: 16,
              fontWeight: "normal",
              color: "#000000",
              textAlign: {"en": "left", "ar": "right"},
              backgroundColor: "#FFFFFF",
            ),
      );
}

extension TermsStyleModelMapper on TermsStyleModel {
  TermsStyleEntity toEntity() => TermsStyleEntity(
        title: title ?? {},
        content: content ?? {},
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? "normal",
        color: color ?? "#000000",
        textAlign: textAlign ?? {"en": "left", "ar": "right"},
        backgroundColor: backgroundColor ?? "#FFFFFF",
      );
}

extension TermsResponseModelMapper on TermsResponseModel {
  TermsResponseEntity toEntity() => TermsResponseEntity(
        termsAndConditions:
            termsAndConditions?.map((e) => e.toEntity()).toList() ?? [],
      );
}
