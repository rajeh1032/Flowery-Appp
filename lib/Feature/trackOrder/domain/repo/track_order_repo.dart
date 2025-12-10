import 'package:flower_e_commerce_app/Feature/trackOrder/domain/entities/order_entity.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/domain/entities/vehicle_entity.dart';
import 'package:flower_e_commerce_app/core/Errors/api_results.dart';
import 'package:flower_e_commerce_app/core/Errors/firebase_results.dart';
import 'package:flower_e_commerce_app/core/enum/enums.dart';

abstract class TrackOrderRepo {
  Future<ApiResult<VehicleEntity>> getVehicleById(String vehicleId);
  Stream<ApiResult<OrderEntity>> getOrderStream(String orderId);
  Future<FirebaseResult> updateOrderStatusFirebase(
    String orderId,
    OrderStatus status,
  );
}
