import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flower_e_commerce_app/Feature/map/presentation/pages/maps_screen.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/presentaion/models/tracking_step.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/presentaion/view_model/track_order_cubit.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/presentaion/view_model/track_order_event.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/presentaion/view_model/track_order_state.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/presentaion/widgets/driver_info_card.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/presentaion/widgets/track_order_shimmer.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/presentaion/widgets/tracking_timeline.dart';
import 'package:flower_e_commerce_app/core/Config/Theme/app_colors.dart';
import 'package:flower_e_commerce_app/core/enum/enums.dart';
import 'package:flower_e_commerce_app/core/helpers/dialogue_utils.dart';
import 'package:flower_e_commerce_app/core/helpers/flutter_toast.dart';
import 'package:flower_e_commerce_app/core/localization/locale_keys.g.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_assets.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_constants.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class TrackOrderView extends StatelessWidget {
  const TrackOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: AppColorsLight.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back_ios, color: AppColorsLight.black, size: 20),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          LocaleKeys.track_order_title.tr(),
          style: theme.appBarTheme.titleTextStyle?.copyWith(fontSize: 18),
        ),
      ),
      body: BlocBuilder<TrackOrderViewModel, TrackOrderState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const TrackOrderShimmer();
          }

          if (state.orderEntity == null) {
            return Center(child: Text(LocaleKeys.no_order_data_found.tr()));
          }

          final order = state.orderEntity!;
          final driver = order.driverData;
          final vehicle = state.vehicleEntity;
          final riderStatus = RiderOrderStatus.fromString(order.state);
          print("Order State: ${order.state}");

          final List<TrackingStep> steps = [
            TrackingStep(
              title: LocaleKeys.orderReceived.tr(),
              timestamp: order.createdAt,
              isCompleted: riderStatus.statusStep >= 1,
            ),
            TrackingStep(
              title: LocaleKeys.preparing_order.tr(),
              timestamp: order.createdAt,
              isCompleted: riderStatus.statusStep >= 2,
            ),
            TrackingStep(
              title: LocaleKeys.out_for_delivery.tr(),
              timestamp: order.createdAt,
              isCompleted: riderStatus.statusStep >= 3,
            ),
            TrackingStep(
              title: LocaleKeys.delivered.tr(),
              timestamp: order.createdAt,
              isCompleted: riderStatus.statusStep >= 4,
            ),
          ];

          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        LocaleKeys.estimated_arrival.tr(),
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: AppColorsLight.grey,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        DateFormat(
                          AppConstants.aboutUsDateFormat,
                        ).format(DateTime.now().add(const Duration(days: 2))),
                        style: theme.textTheme.displayMedium?.copyWith(
                          color: AppColorsLight.black,
                        ),
                      ),
                      Divider(
                        color: AppColorsLight.grey,
                        thickness: 0.5,
                        indent: 8,
                        endIndent: 8,
                      ),
                      SizedBox(height: 20),
                      DriverInfoCard(
                        driverName: '${driver.firstName} ${driver.lastName}',
                        driverPhone: driver.phone,
                        driverPhoto: driver.photo,
                      ),
                      SizedBox(height: 22),
                      Center(
                        child: vehicle != null && vehicle.image.isNotEmpty
                            ? CachedNetworkImage(
                                imageUrl: vehicle.image,
                                height: 83,
                                width: 213,
                                fit: BoxFit.contain,
                                errorWidget: (context, error, stackTrace) =>
                                    Icon(
                                  Icons.local_shipping,
                                  size: 60,
                                  color: AppColorsLight.pink,
                                ),
                              )
                            : SvgPicture.asset(
                                Assets.assetsImagesCar,
                                height: 83,
                                width: 213,
                              ),
                      ),
                      SizedBox(height: 24),
                      TrackingTimeline(steps: steps),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: _buildActionButtons(
                  context: context,
                  state: state,
                  theme: theme,
                  riderStatus: riderStatus,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildActionButtons({
    required BuildContext context,
    required TrackOrderState state,
    required ThemeData theme,
    required RiderOrderStatus riderStatus,
  }) {
    final isDeliveredStep = riderStatus.statusStep >= 5;

    final buttons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (isDeliveredStep)
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                DialogueUtils.showMessage(
                  context: context,
                  title: LocaleKeys.confirmDelivery.tr(),
                  message: LocaleKeys.confirmDeliveryMessage.tr(),
                  posActionName: LocaleKeys.ok.tr(),
                  posAction: () {
                    context.read<TrackOrderViewModel>().doIntent(
                          UpdateOrderStatusEvent(
                            orderId: state.orderEntity?.id ?? "",
                            status: OrderStatus.completed,
                          ),
                        );
                  },
                  ngeActionName: LocaleKeys.cancel.tr(),
                );
              },
              child: Text(
                LocaleKeys.confirmDelivery.tr(),
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: AppColorsLight.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        if (isDeliveredStep) SizedBox(width: 12),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              // todo: show map
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DriverMapPage(orderId: state.orderEntity?.id ?? ""),
                ),
              );
            },
            child: Text(
              LocaleKeys.show_map.tr(),
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: theme.textTheme.titleMedium?.copyWith(
                color: AppColorsLight.white,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );

    return isDeliveredStep
        ? BlocConsumer<TrackOrderViewModel, TrackOrderState>(
            listenWhen: (previous, current) =>
                previous.updateSuccess != current.updateSuccess ||
                previous.isUpdating != current.isUpdating ||
                previous.updateFailure != current.updateFailure,
            listener: (context, state) {
              if (state.updateSuccess && !state.isUpdating) {
                Navigator.pop(context); // hideLoading
                ToastMessage.toastMsg(
                  context,
                  LocaleKeys.order_marked_as_delivered.tr(),
                  backgroundColor: AppColorsLight.pink,
                );
                Navigator.pushReplacementNamed(
                    context, AppRoutes.mainLayoutRoute);
              } else if (state.isUpdating) {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (_) => AlertDialog(
                    content: Row(
                      children: [
                        const CircularProgressIndicator(),
                        const SizedBox(width: 16),
                        Text(LocaleKeys.updating.tr()),
                      ],
                    ),
                  ),
                );
              } else if (state.updateFailure != null) {
                Navigator.pop(context); // hideLoading
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('Error'),
                    content: Text(state.updateFailure!.errorMessage),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              }
            },
            builder: (context, state) => buttons,
          )
        : buttons;
  }
}
