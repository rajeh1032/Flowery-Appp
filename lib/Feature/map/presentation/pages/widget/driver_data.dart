import 'package:flower_e_commerce_app/Feature/map/presentation/view_model/tracking_bloc.dart';
import 'package:flower_e_commerce_app/Feature/map/presentation/view_model/tracking_event.dart';
import 'package:flower_e_commerce_app/core/Config/Theme/app_colors.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_assets.dart';
import 'package:flutter/material.dart';

class DriverData extends StatelessWidget {
  const DriverData({
    super.key,
    required this.trackingViewModel,
    required this.phoneNumber,
    required this.driverName,
    required this.date,
    required this.onTap,
  });
  final TrackingViewModel trackingViewModel;
  final String phoneNumber;
  final String driverName;
  final String date;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.3,
          color: AppColorsLight.white,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Estimated arrival",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Text(
                      date,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: AppColorsLight.black),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.call,
                            color: AppColorsLight.pink,
                            size: 20,
                          ),
                          onPressed: () {
                            trackingViewModel.doIntent(
                              CallDriverEvent(phoneNumber),
                            );
                          },
                        ),
                        GestureDetector(
                          onTap: () => trackingViewModel.doIntent(
                            WatsappDriverEvent(phoneNumber),
                          ),
                          child: Image.asset(Assets.assetsImagesWhatsappIcon),
                        ),
                      ],
                    ),
                    leading: Image.asset(Assets.logoBoy),
                    title: Text(
                      driverName,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: AppColorsLight.black),
                    ),
                    subtitle: Text(
                      "is your delivery hero for today",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: onTap,
                      child: Text("order details"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
