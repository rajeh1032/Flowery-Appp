part of 'sign_in_view_model.dart';

class SignInState {
  SigninResponseEntity? response;
  Failure? failure;
  bool isLoading;
  bool? isLoggedIn;

  SignInState({
    this.response,
    this.failure,
    this.isLoading = false,
    this.isLoggedIn,
  });

  SignInState copyWith({
    SigninResponseEntity? response,
    Failure? failure,
    bool? isLoading,
    bool? isLoggedIn,
  }) {
    return SignInState(
      response: response ?? this.response,
      failure: failure ?? this.failure,
      isLoading: isLoading ?? this.isLoading,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
    );
  }
}
