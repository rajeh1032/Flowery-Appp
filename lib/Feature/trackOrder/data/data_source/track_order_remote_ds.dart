import 'package:flower_e_commerce_app/Feature/trackOrder/data/model/order_dto.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/data/model/response/vehicle_response_dto.dart';
import 'package:flower_e_commerce_app/core/enum/enums.dart';

abstract class TrackOrderRemoteDataSource {
  Future<VehicleResponseDto> getVehicleById(String vehicleId);
  Stream<OrderDto> getOrderStream(String orderId);
  Future<void> updateOrderStatusFirebase(String orderId, OrderStatus status);
}
