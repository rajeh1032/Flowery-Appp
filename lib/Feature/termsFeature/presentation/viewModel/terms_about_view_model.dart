import 'package:flower_e_commerce_app/Feature/termsFeature/domain/useCases/get_about_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'terms_about_event.dart';
import 'terms_about_state.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/useCases/get_terms_use_case.dart';

@injectable
class TermsAboutViewModel extends Cubit<TermsAboutState> {
  final GetTermsUseCase _getTermsUseCase;
  final GetAboutUseCase _getAboutUseCase;

  TermsAboutViewModel(this._getTermsUseCase, this._getAboutUseCase)
      : super(TermsAboutState());

  Future<void> doIntent(TermsAboutEvent event) async {
    switch (event) {
      case LoadTermsEvent():
        await _loadTerms();
        break;
      case LoadAboutEvent():
        await _loadAbout();
        break;
    }
  }

  Future<void> _loadTerms() async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final termsData = await _getTermsUseCase.call();
      emit(state.copyWith(isLoading: false, termsData: termsData));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  Future<void> _loadAbout() async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final aboutData = await _getAboutUseCase.call();
      emit(state.copyWith(isLoading: false, aboutData: aboutData));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
