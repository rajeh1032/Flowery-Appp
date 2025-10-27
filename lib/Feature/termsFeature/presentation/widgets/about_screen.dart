import 'package:flower_e_commerce_app/Feature/termsFeature/presentation/viewModel/terms_about_state.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/presentation/viewModel/terms_about_view_model.dart';
import 'package:flower_e_commerce_app/core/Widgets/custom_app_bar.dart';
import 'package:flower_e_commerce_app/core/helpers/dialogue_utils.dart';
import 'package:flower_e_commerce_app/core/localization/locale_keys.g.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/info_sections_list.dart';

@injectable
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;

    return BlocConsumer<TermsAboutViewModel, TermsAboutState>(
      bloc: context.read<TermsAboutViewModel>(),
      listener: (context, state) {
        if (state.errorMessage != null) {
          DialogueUtils.showMessage(
            context: context,
            message: state.errorMessage!,
          );
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (state.errorMessage != null) {
          return Scaffold(
            body: Center(
                child: Text(LocaleKeys.error.tr() + state.errorMessage!)),
          );
        }

        final aboutList = state.aboutData?.aboutApp ?? [];

        return Scaffold(
          appBar: AppBar(
            leadingWidth: AppSizes.appBarLeadingWidth,
            leading: CustomBackButton(
              title: LocaleKeys.about_app.tr(),
            ),
          ),
          body: InfoSectionsList(
            sections: aboutList,
            locale: locale,
          ),
        );
      },
    );
  }
}
