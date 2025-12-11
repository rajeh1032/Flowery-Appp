import 'package:easy_localization/easy_localization.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/presentaion/page/track_order_screen.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/presentaion/view_model/track_order_cubit.dart';
import 'package:flower_e_commerce_app/Feature/trackOrder/presentaion/view_model/track_order_state.dart';
import 'package:flower_e_commerce_app/core/Config/Theme/app_colors.dart';
import 'package:flower_e_commerce_app/core/Widgets/custom_app_bar.dart';
import 'package:flower_e_commerce_app/core/helpers/routing_extensions.dart';
import 'package:flower_e_commerce_app/core/localization/locale_keys.g.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_assets.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/app_routes.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lottie/lottie.dart';

class SuccessScreenView extends StatelessWidget {
  const SuccessScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: AppSizes.appBarLeadingWidth,
        leading: CustomBackButton(
          title: "Success Screen",
        ),
      ),
      backgroundColor: AppColorsLight.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              Assets.assetsImagesSucessLottie,
              repeat: true,
              reverse: false,
              animate: true,
            ),
            Text(
              LocaleKeys.your_oredr_placed.tr(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              LocaleKeys.successfully.tr(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 30),
            BlocBuilder<TrackOrderViewModel, TrackOrderState>(
              builder: (context, state) {
                final hasData = state.orderEntity != null;

                return ElevatedButton(
                  onPressed: () {
                    final currentCubit = context.read<TrackOrderViewModel>();

                    if (hasData) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                            value: currentCubit,
                            child: TrackOrderScreen(),
                          ),
                        ),
                      );
                    } else {
                      context.pushNamedAndRemoveUntil(
                        AppRoutes.mainLayoutRoute,
                        predicate: (_) => false,
                      );
                    }
                  },
                  child: Text(
                    hasData
                        ? LocaleKeys.track_order.tr()
                        : LocaleKeys.wait_until_shipping.tr(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
