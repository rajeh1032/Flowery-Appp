import 'package:easy_localization/easy_localization.dart';
import 'package:flower_e_commerce_app/Feature/auth/presentation/viewModel/logout/logout_view_model.dart';
import 'package:flower_e_commerce_app/Feature/auth/presentation/widgets/logout/logout_alert_dialogue.dart';
import 'package:flower_e_commerce_app/core/Config/Theme/app_colors.dart';
import 'package:flower_e_commerce_app/core/Di/di.dart';
import 'package:flower_e_commerce_app/core/localization/locale_keys.g.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LogoutViewModel>(),
      child: Center(
        child: ListTile(
          leading: Icon(Icons.logout,
              color: AppColorsLight.grey, size: AppSizes.smIcon_16),
          title: Text(
            LocaleKeys.logout.tr(),
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: AppColorsLight.black),
          ),
          trailing: Icon(Icons.logout,
              color: AppColorsLight.grey, size: AppSizes.mdIcon_24),
          onTap: () => _logout(context),
        ),
      ),
    );
  }
}

void _logout(context) {
  showDialog(
    context: context,
    builder: (_) {
      return BlocProvider.value(
        value: getIt<LogoutViewModel>(),
        child: const LogoutAlertDialogue(),
      );
    },
  );
}
