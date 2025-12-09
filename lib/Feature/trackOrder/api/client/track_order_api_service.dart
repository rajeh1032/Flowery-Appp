import 'package:dio/dio.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/data/model/response/vehicle_response_dto.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/api_constants.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'track_order_api_service.g.dart';

@injectable
@RestApi()

abstract class TrackOrderApiService {
  @factoryMethod
  factory TrackOrderApiService(Dio dio) = _TrackOrderApiService;

  @GET(ApiConstants.vehicles)
  Future<VehicleResponseDto> getVehicleById(
    @Path("vehicleId") String vehicleId,
  );
}
