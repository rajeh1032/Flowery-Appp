import 'package:flower_e_commerce_app/Feature/trackOrder/domain/repo/track_order_repo.dart';
import 'package:flower_e_commerce_app/core/Errors/firebase_results.dart';
import 'package:flower_e_commerce_app/core/enum/enums.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateOrderFirebaseUseCase {
  // ignore: prefer_final_fields
  TrackOrderRepo _repo;
  UpdateOrderFirebaseUseCase(this._repo);
  Future<FirebaseResult> invoke(String orderId, OrderStatus status) {
    return _repo.updateOrderStatusFirebase(orderId, status);
  }
}
