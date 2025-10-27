import 'package:easy_localization/easy_localization.dart';
import 'package:flower_e_commerce_app/core/Widgets/custom_elevated_button.dart';
import 'package:flower_e_commerce_app/core/localization/locale_keys.g.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_assets.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flower_e_commerce_app/core/helpers/routing_extensions.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_routes.dart';
import 'package:lottie/lottie.dart';

// ignore: must_be_immutable
class GuestLoginPrompt extends StatelessWidget {
  String message;
  bool? buttonLoadingState;
  GuestLoginPrompt(
      {super.key, required this.message, required this.buttonLoadingState});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.paddingMd_16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              Assets.signInLotti,
              height: 200,
              width: 200,
              repeat: true,
            ),
            SizedBox(height: AppSizes.paddingMd_16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(height: AppSizes.paddingMd_16),
            SizedBox(
              width: 150,
              child: CustomElevatedButton(
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.signInRoute);
                },
                widget: Text(
                  LocaleKeys.login.tr(),
                ),
                isLoading: buttonLoadingState ?? false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
