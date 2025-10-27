import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/response/about_response_entity.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/response/terms_response_entity.dart';

class TermsAboutState {
  final bool isLoading;
  final String? errorMessage;
  final TermsResponseEntity? termsData;
  final AboutResponseEntity? aboutData;

  TermsAboutState({
    this.isLoading = false,
    this.errorMessage,
    this.termsData,
    this.aboutData,
  });

  TermsAboutState copyWith({
    bool? isLoading,
    String? errorMessage,
    TermsResponseEntity? termsData,
    AboutResponseEntity? aboutData,
  }) {
    return TermsAboutState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      termsData: termsData ?? this.termsData,
      aboutData: aboutData ?? this.aboutData,
    );
  }
}
