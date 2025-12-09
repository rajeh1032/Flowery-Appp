import 'package:flower_e_commerce_app/Feature/trackOrder/domain/entities/vehicle_entity.dart';

class VehicleResponseEntity {
  final String message;
  final VehicleEntity vehicle;

  const VehicleResponseEntity({required this.message, required this.vehicle});
}
