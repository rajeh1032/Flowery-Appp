import 'package:flower_e_commerce_app/Feature/map/domain/entites/tracking_entity.dart';
import 'package:flower_e_commerce_app/Feature/map/domain/repo/tracking_repo.dart';
import 'package:flower_e_commerce_app/core/Errors/firebase_results.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDataUseCase {
  final TrackingRepo _trackingRepo;
  GetDataUseCase(this._trackingRepo);
  Future<FirebaseResult<TrackingEntity>> call(String orderId) =>
      _trackingRepo.getDataRepo(orderId);
}
