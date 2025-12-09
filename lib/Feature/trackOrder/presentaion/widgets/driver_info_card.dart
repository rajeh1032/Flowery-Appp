import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flower_e_commerce_app/core/Config/Theme/app_colors.dart';
import 'package:flower_e_commerce_app/core/Functions/call_number.dart';
import 'package:flower_e_commerce_app/core/Functions/open_whatsapp.dart';
import 'package:flower_e_commerce_app/core/localization/locale_keys.g.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DriverInfoCard extends StatelessWidget {
  final String driverName;
  final String driverPhone;
  final String driverPhoto;

  const DriverInfoCard({
    super.key,
    required this.driverName,
    required this.driverPhone,
    required this.driverPhoto,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          clipBehavior: Clip.antiAlias,
          child: CachedNetworkImage(
            imageUrl: driverPhoto,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) =>
                const Icon(Icons.person, color: AppColorsLight.red),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                driverName,
                style: theme.textTheme.displayMedium?.copyWith(
                  color: AppColorsLight.black,
                ),
              ),
              SizedBox(height: 2),
              Text(
                LocaleKeys.deliveryHeroForToday.tr(),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: AppColorsLight.white[80],
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                callNumber(driverPhone);
              },
              child: Tooltip(
                message: LocaleKeys.callDriver.tr(),
                child: SvgPicture.asset(
                  Assets.assetsImagesPhoneIcon,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                openWhatsApp(driverPhone);
              },
              child: Tooltip(
                message: LocaleKeys.chatOnWhatsApp.tr(),
                child: SvgPicture.asset(
                  Assets.assetsImagesWhatsappIcon,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
