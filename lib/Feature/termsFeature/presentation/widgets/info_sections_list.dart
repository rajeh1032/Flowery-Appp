import 'package:flower_e_commerce_app/core/Config/Theme/app_colors.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_constants.dart';
import 'package:flutter/material.dart';

class InfoSectionsList extends StatelessWidget {
  final List<dynamic> sections;
  final String locale;

  const InfoSectionsList({
    super.key,
    required this.sections,
    required this.locale,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: sections.length,
      itemBuilder: (ctx, i) {
        final item = sections[i];
        final style = item.style;

        final bgColor = _parseColor(style.backgroundColor);
        final textColor = _parseColor(style.color);

        final titleText = item.title?[locale] ??
            item.title?[AppConstants.en] ??
            (item.title?.isNotEmpty == true ? item.title!.values.first : '') ??
            '';

        final contentDynamic = item.content?[locale] ??
            item.content?[AppConstants.en] ??
            (item.content?.isNotEmpty == true
                ? item.content!.values.first
                : []);

        final contentList =
            (contentDynamic is List) ? contentDynamic : [contentDynamic];

        return Container(
          color: bgColor ?? Colors.transparent,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (titleText.isNotEmpty)
                Text(
                  titleText,
                  style: TextStyle(
                    fontSize: style.fontSize ?? 18,
                    fontWeight: _parseFontWeight(style.fontWeight),
                    color: textColor ?? Colors.black,
                  ),
                  textAlign: _parseTextAlign(style.textAlign?[locale]),
                ),
              ...contentList.map(
                (c) => Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    c.toString(),
                    style: TextStyle(
                      fontSize: style.fontSize ?? 16,
                      fontWeight: _parseFontWeight(style.fontWeight),
                      color: textColor ?? AppColorsLight.black,
                    ),
                    textAlign: _parseTextAlign(style.textAlign?[locale]),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Color? _parseColor(String? colorString) {
    if (colorString == null || colorString.isEmpty) return null;
    try {
      return Color(int.parse(colorString.replaceFirst('#', '0xff')));
    } catch (_) {
      return null;
    }
  }

  FontWeight _parseFontWeight(String? fontWeight) {
    switch (fontWeight?.toLowerCase()) {
      case 'bold':
        return FontWeight.bold;
      case 'w500':
        return FontWeight.w500;
      case 'w600':
        return FontWeight.w600;
      case 'w300':
        return FontWeight.w300;
      default:
        return FontWeight.normal;
    }
  }

  TextAlign _parseTextAlign(String? align) {
    switch (align?.toLowerCase()) {
      case 'center':
        return TextAlign.center;
      case 'right':
        return TextAlign.right;
      case 'justify':
        return TextAlign.justify;
      default:
        return TextAlign.left;
    }
  }
}
