import 'package:easy_localization/easy_localization.dart';
import 'package:flower_e_commerce_app/Feature/auth/presentation/viewModel/logout/logout_event.dart';
import 'package:flower_e_commerce_app/Feature/auth/presentation/viewModel/logout/logout_state.dart';
import 'package:flower_e_commerce_app/Feature/auth/presentation/viewModel/logout/logout_view_model.dart';
import 'package:flower_e_commerce_app/core/helpers/dialogue_utils.dart';
import 'package:flower_e_commerce_app/core/helpers/flutter_toast.dart';
import 'package:flower_e_commerce_app/core/helpers/routing_extensions.dart';
import 'package:flower_e_commerce_app/core/localization/locale_keys.g.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoutAlertDialogue extends StatelessWidget {
  const LogoutAlertDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocListener<LogoutViewModel, LogoutState>(
      listener: (context, state) {
        if (state.errorMsg != null) {
          Navigator.pop(context);
          ToastMessage.toastMsg(
            context,
            state.errorMsg!,
            backgroundColor: theme.colorScheme.error,
          );
        }
        if (state.isSuccess) {
          Navigator.pop(context);
          context.pushReplacementNamed(AppRoutes.signInRoute);
          ToastMessage.toastMsg(
            context,
            LocaleKeys.logout_successfully.tr(),
          );
          context.pushReplacementNamed(AppRoutes.signInRoute);
        }
      },
      child: Builder(
        builder: (context) {
          Future.microtask(() {
            DialogueUtils.showMessage(
              context: context,
              title: LocaleKeys.logout.tr(),
              message: LocaleKeys.confirm_logout.tr(),
              posActionName: LocaleKeys.logout.tr(),
              ngeActionName: LocaleKeys.cancel.tr(),
              posAction: () {
                context.read<LogoutViewModel>().doIntent(SubmitLogoutEvent());
              },
              ngeAction: () {
                Navigator.pop(context);
              },
            );
          });

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
