import 'package:flower_e_commerce_app/Feature/termsFeature/presentation/viewModel/terms_about_event.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/presentation/widgets/about_screen.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/presentation/widgets/terms_screen.dart';
import 'package:flower_e_commerce_app/core/Di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/presentation/viewModel/terms_about_view_model.dart';

class TermsAboutProvider {
  static Widget aboutScreen() {
    return BlocProvider(
      create: (_) =>
          getIt<TermsAboutViewModel>()..doIntent(const LoadAboutEvent()),
      child: const AboutScreen(),
    );
  }

  static Widget termsScreen() {
    return BlocProvider(
      create: (_) =>
          getIt<TermsAboutViewModel>()..doIntent(const LoadTermsEvent()),
      child: const TermsScreen(),
    );
  }
}
