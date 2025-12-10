import 'package:flower_e_commerce_app/Feature/trackOrder/data/model/response/vehicle_response_dto.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/domain/entities/vehicle_entity.dart';

extension VehicleMapper on VehicleResponseDto {
  VehicleEntity toEntity() {
    return VehicleEntity(image: vehicle?.image ?? '');
  }
}
