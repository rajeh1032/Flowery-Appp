import 'package:flower_e_commerce_app/Feature/trackOrder/api/client/track_order_api_service.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/data/data_source/track_order_remote_ds.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/data/model/order_dto.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/data/model/response/vehicle_response_dto.dart';
import 'package:flower_e_commerce_app/core/Services/firebase_services.dart';
import 'package:flower_e_commerce_app/core/enum/enums.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/api_constants.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_constants.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TrackOrderRemoteDataSource)
class TrackOrderRemoteDataSourceImp implements TrackOrderRemoteDataSource {
  final TrackOrderApiService _apiServices;
  final FirebaseService _firebaseService;
  static const String _orderCollection = ApiConstants.orderCollection;
  TrackOrderRemoteDataSourceImp(this._apiServices, this._firebaseService);
  @override
  Future<VehicleResponseDto> getVehicleById(String vehicleId) async {
    return await _apiServices.getVehicleById(vehicleId);
  }

  @override
  Stream<OrderDto> getOrderStream(String orderId) {
    return _firebaseService.streamData(_orderCollection, orderId).map((
      snapshot,
    ) {
      if (!snapshot.exists) {
        throw Exception(AppConstants.orderNotFound);
      }
      final data = snapshot.data() as Map<String, dynamic>;
      return OrderDto.fromJson(data);
    });
  }

  @override
  Future<void> updateOrderStatusFirebase(String orderId, OrderStatus status) {
    return _firebaseService.updateData(ApiConstants.orderCollection, orderId, {
      ApiConstants.userState: status.name,
    });
  }
}
