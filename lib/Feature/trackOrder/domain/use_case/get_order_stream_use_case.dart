import 'package:flower_e_commerce_app/Feature/trackOrder/domain/entities/order_entity.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/domain/repo/track_order_repo.dart';
import 'package:flower_e_commerce_app/core/Errors/api_results.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetOrderStreamUseCase {
  final TrackOrderRepo _repo;

  GetOrderStreamUseCase(this._repo);

  Stream<ApiResult<OrderEntity>> invoke(String orderId) {
    return _repo.getOrderStream(orderId);
  }
}
