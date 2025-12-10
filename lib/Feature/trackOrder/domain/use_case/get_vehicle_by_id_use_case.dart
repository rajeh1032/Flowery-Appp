import 'package:flower_e_commerce_app/Feature/trackOrder/domain/entities/vehicle_entity.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/domain/repo/track_order_repo.dart';
import 'package:flower_e_commerce_app/core/Errors/api_results.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetVehicleByIdUseCase {
  final TrackOrderRepo _repo;

  GetVehicleByIdUseCase(this._repo);

  Future<ApiResult<VehicleEntity>> invoke(String vehicleId) =>
      _repo.getVehicleById(vehicleId);
}
