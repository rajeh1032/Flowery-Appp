import 'package:flower_e_commerce_app/Feature/auth/domain/entities/response/logout_response_entity.dart';
import 'package:flower_e_commerce_app/Feature/auth/domain/useCases/logout_use_case.dart';
import 'package:flower_e_commerce_app/Feature/auth/presentation/viewModel/logout/logout_event.dart';
import 'package:flower_e_commerce_app/Feature/auth/presentation/viewModel/logout/logout_state.dart';
import 'package:flower_e_commerce_app/core/Errors/api_results.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutViewModel extends Cubit<LogoutState> {
  LogoutViewModel(this.useCase) : super(const LogoutState());
  LogoutUseCase useCase;

  doIntent(LogoutEvent event) {
    switch (event) {
      case SubmitLogoutEvent():
        _logout();
        break;
    }
  }

  Future<void> _logout() async {
    emit(state.copyWith(isLoading: true, isSuccess: false, errorMsg: null));

    var result = await useCase.invoke();

    switch (result) {
      case ApiSuccessResult<LogoutResponseEntity>():
        emit(state.copyWith(isLoading: false, isSuccess: true));
        break;
      case ApiErrorResult<LogoutResponseEntity>():
        emit(
          state.copyWith(
            isLoading: false,
            errorMsg: result.failure.errorMessage,
          ),
        );
    }
  }
}
