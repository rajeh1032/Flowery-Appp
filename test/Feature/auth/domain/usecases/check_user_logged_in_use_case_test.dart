import 'package:flower_e_commerce_app/Feature/auth/domain/useCases/check_user_loggedIn_use_case.dart';
import 'package:flower_e_commerce_app/Feature/auth/domain/repositories/auth_repo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'sign_in_use_case_test.mocks.dart';

void main() {
  late CheckUserLoggedInUseCase useCase;
  late MockAuthRepo mockAuthRepo;

  setUp(() {
    mockAuthRepo = MockAuthRepo();
    useCase = CheckUserLoggedInUseCase(mockAuthRepo);
  });

  group('CheckUserLoggedInUseCase', () {
    test('returns true when repo reports logged in', () async {
      when(mockAuthRepo.isLoggedIn()).thenAnswer((_) async => true);

      final result = await useCase.invoke();

      expect(result, isTrue);
      verify(mockAuthRepo.isLoggedIn()).called(1);
      verifyNoMoreInteractions(mockAuthRepo);
    });

    test('returns false when repo reports not logged in', () async {
      when(mockAuthRepo.isLoggedIn()).thenAnswer((_) async => false);

      final result = await useCase.invoke();

      expect(result, isFalse);
      verify(mockAuthRepo.isLoggedIn()).called(1);
      verifyNoMoreInteractions(mockAuthRepo);
    });

    test('propagates exception from repo', () async {
      when(mockAuthRepo.isLoggedIn()).thenThrow(Exception('storage failure'));

      expect(() => useCase.invoke(), throwsA(isA<Exception>()));
      verify(mockAuthRepo.isLoggedIn()).called(1);
      verifyNoMoreInteractions(mockAuthRepo);
    });

    test('calls only isLoggedIn with no extra args', () async {
      when(mockAuthRepo.isLoggedIn()).thenAnswer((_) async => true);

      await useCase.invoke();

      verify(mockAuthRepo.isLoggedIn()).called(1);
      verifyNever(mockAuthRepo.signin(request: anyNamed('request'), rememberMeChecked: anyNamed('rememberMeChecked')));
      verifyNever(mockAuthRepo.signup(requestEntity: anyNamed('requestEntity')));
    });

    test('handles multiple sequential calls consistently', () async {
      when(mockAuthRepo.isLoggedIn()).thenAnswer((_) async => true);

      final first = await useCase.invoke();
      final second = await useCase.invoke();

      expect(first, isTrue);
      expect(second, isTrue);
      verify(mockAuthRepo.isLoggedIn()).called(2);
    });
  });
}
