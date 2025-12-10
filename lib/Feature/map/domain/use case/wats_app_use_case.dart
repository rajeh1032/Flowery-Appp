import 'package:flower_e_commerce_app/Feature/map/domain/repo/tracking_repo.dart';
import 'package:flower_e_commerce_app/core/Errors/firebase_results.dart';
import 'package:injectable/injectable.dart';

@injectable
class WatsappUseCase {
  final TrackingRepo _trackingRepo;
  WatsappUseCase(this._trackingRepo);
  Future<FirebaseResult<void>> call(String phoneNumber) =>
      _trackingRepo.openWatsAppRepo(phoneNumber);
}
