import 'package:flower_e_commerce_app/Feature/map/domain/entites/tracking_entity.dart';
import 'package:flower_e_commerce_app/core/Errors/firebase_results.dart';
import 'package:latlong2/latlong.dart';

abstract interface class TrackingRepo {
  Future<FirebaseResult<TrackingEntity>> getDataRepo(String orderId);
  Stream<FirebaseResult<LatLng?>> streamDriverLocationRepo(String orderId);
  Future<FirebaseResult<void>> callDriverRepo(String phoneNumber);
  Future<FirebaseResult<void>> openWatsAppRepo(String phoneNumber);
}
