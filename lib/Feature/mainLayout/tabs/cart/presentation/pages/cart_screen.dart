import 'package:easy_localization/easy_localization.dart';
import 'package:flower_e_commerce_app/Feature/auth/presentation/viewModel/signin/sign_in_view_model.dart';
import 'package:flower_e_commerce_app/Feature/mainLayout/tabs/cart/presentation/viewModel/cart_cubit.dart';
import 'package:flower_e_commerce_app/Feature/mainLayout/tabs/cart/presentation/viewModel/cart_events.dart';
import 'package:flower_e_commerce_app/Feature/mainLayout/tabs/cart/presentation/widgets/cart_app_bar.dart';
import 'package:flower_e_commerce_app/Feature/mainLayout/tabs/cart/presentation/widgets/cart_buttom_bar.dart';
import 'package:flower_e_commerce_app/Feature/mainLayout/tabs/cart/presentation/widgets/cart_screen_body.dart';
import 'package:flower_e_commerce_app/core/Widgets/guest_login_prompt.dart';
import 'package:flower_e_commerce_app/core/Di/di.dart';
import 'package:flower_e_commerce_app/core/localization/locale_keys.g.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SigninViewModel>().checkAuthStatus();
    });
    return BlocProvider(
      create: (context) => getIt<CartCubit>()..doIntent(GetUserCartEvent()),
      child: Scaffold(
        appBar: const CartAppBar(),
        bottomNavigationBar: const CartButtomBar(),
        body: BlocBuilder<SigninViewModel, SignInState>(
          builder: (context, state) {
            if (state.isLoggedIn == true) {
              return const CartScreenBody();
            } else if (state.isLoggedIn == false) {
              return GuestLoginPrompt(
                message: LocaleKeys.please_log_to_view_your_cart.tr(),
                buttonLoadingState: state.isLoading,
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
