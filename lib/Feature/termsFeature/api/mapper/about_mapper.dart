import 'package:flower_e_commerce_app/Feature/termsFeature/api/model/about_model.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/api/model/about_style_model.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/api/model/response/about_response_model.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/about_entity.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/about_style_entity.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/response/about_response_entity.dart';

extension AboutModelMapper on AboutModel {
  AboutEntity toEntity() => AboutEntity(
        section: section ?? "",
        title: title ?? {},
        content: content ?? {},
        style: style?.toEntity() ??
            AboutStyleEntity(
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

extension AboutStyleModelMapper on AboutStyleModel {
  AboutStyleEntity toEntity() => AboutStyleEntity(
        title: title ?? {},
        content: content ?? {},
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? "normal",
        color: color ?? "#000000",
        textAlign: textAlign ?? {"en": "left", "ar": "right"},
        backgroundColor: backgroundColor ?? "#FFFFFF",
      );
}

extension AboutResponseModelMapper on AboutResponseModel {
  AboutResponseEntity toEntity() => AboutResponseEntity(
        aboutApp: aboutApp?.map((e) => e.toEntity()).toList() ?? [],
      );
}
