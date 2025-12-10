import 'package:flower_e_commerce_app/Feature/map/data/model/response_dto.dart';
import 'package:flower_e_commerce_app/Feature/map/data/sources/tracking_ds.dart';
import 'package:flower_e_commerce_app/core/Services/firebase_services.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_constants.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

@Injectable(as: TrackingDataSource)
class TrackingDataSourceImp implements TrackingDataSource {
  final FirebaseService _firebaseService;

  TrackingDataSourceImp(this._firebaseService);
  @override
  Future<ResponseDto> getData(String orderId) async {
    final snapshot = await _firebaseService.getData(
      AppConstants.collectionKey,
      orderId,
    );
    final data = snapshot.data() as Map<String, dynamic>;
    return ResponseDto.fromJson(data);
  }

  @override
  Stream<String> streamDriverLocation(String orderId) async* {
    yield* _firebaseService
        .streamData(AppConstants.collectionKey, orderId)
        .map((
      snapshot,
    ) {
      final data = snapshot.data() as Map<String, dynamic>?;
      final loc = data![AppConstants.driverLocationKey];

      return loc;
    });
  }

  @override
  Future<void> callDriver(String phoneNumber) async {
    final Uri url = Uri(scheme: 'tel', path: phoneNumber);
    if (!await launchUrl(url)) {
      throw Exception();
    }
  }

  @override
  Future<void> openWatsApp(String phoneNumber) async {
    final Uri uri = Uri.parse('${AppConstants.urlwatsApp}$phoneNumber');
    if (!await launchUrl(uri)) throw Exception();
  }
}
