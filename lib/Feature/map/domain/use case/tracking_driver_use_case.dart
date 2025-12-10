import 'package:flower_e_commerce_app/Feature/map/domain/repo/tracking_repo.dart';
import 'package:flower_e_commerce_app/core/Errors/firebase_results.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';

@injectable
class TrackingDriverUseCase {
  final TrackingRepo _trackingRepo;
  TrackingDriverUseCase(this._trackingRepo);
  Stream<FirebaseResult<LatLng?>> call(String orderId) =>
      _trackingRepo.streamDriverLocationRepo(orderId);
}
