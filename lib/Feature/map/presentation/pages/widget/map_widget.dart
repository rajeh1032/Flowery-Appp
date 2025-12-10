import 'package:flower_e_commerce_app/Feature/map/presentation/pages/widget/custom_marker.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_assets.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';

class MapWidgetTracking extends StatefulWidget {
  const MapWidgetTracking({
    super.key,
    required this.driverPosition,
    required this.storePosition,
    required this.homePosition,
    required this.mapController,
  });
  final LatLng driverPosition;
  final LatLng storePosition;
  final LatLng homePosition;
  final MapController mapController;

  @override
  State<MapWidgetTracking> createState() => _MapWidgetTrackingState();
}

class _MapWidgetTrackingState extends State<MapWidgetTracking> {
  @override
  void didUpdateWidget(covariant MapWidgetTracking oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.driverPosition != widget.driverPosition) {
      final currentZoom = widget.mapController.camera.zoom;
      widget.mapController.move(widget.driverPosition, currentZoom);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: widget.mapController,
      options: MapOptions(initialCenter: widget.storePosition, initialZoom: 12),
      children: [
        TileLayer(
          urlTemplate: AppConstants.urlTemplate,
          userAgentPackageName: AppConstants.userAgentPackageName,
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: widget.driverPosition,
              width: 100,
              height: 100,
              child: CircleAvatar(
                radius: 5,
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset(Assets.assetImageDeliveryMotorCycle),
              ),
            ),
            Marker(
              point: widget.storePosition,
              width: 100,
              height: 100,
              child: CustomMarker(
                title: "flowery",
                imagePath: Assets.flowerPhoto,
              ),
            ),
            Marker(
              point: widget.homePosition,
              width: 100,
              height: 100,
              child: CustomMarker(
                title: "apartment",
                imagePath: Assets.assetsImagesHomeUnselected,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
