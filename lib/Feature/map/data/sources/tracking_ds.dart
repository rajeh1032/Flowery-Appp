import 'package:flower_e_commerce_app/Feature/map/data/model/response_dto.dart';

abstract interface class TrackingDataSource {
  Stream<String> streamDriverLocation(String orderId);
  Future<ResponseDto> getData(String orderId);
  Future<void> callDriver(String phoneNumber);
  Future<void> openWatsApp(String phoneNumber);
}
