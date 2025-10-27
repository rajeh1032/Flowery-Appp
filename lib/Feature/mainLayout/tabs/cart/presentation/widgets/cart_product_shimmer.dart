import 'package:flower_e_commerce_app/core/Config/Theme/app_colors.dart';
import 'package:flower_e_commerce_app/core/utils/Constantts/sizes.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class CartProductShimmer extends StatelessWidget {
  const CartProductShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      separatorBuilder: (context, index) =>
          const SizedBox(height: AppSizes.spaceBetweenItems_24),
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(AppSizes.paddingSm_8),
        margin: const EdgeInsets.symmetric(horizontal: AppSizes.paddingMd_16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd_8),
          border: Border.all(color: AppColorsLight.shimmerColor),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shimmer(
              color: AppColorsLight.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd_8),
                child: Container(
                  width: AppSizes.cartImageWidth,
                  height: AppSizes.cartImageHigh,
                  color: AppColorsLight.shimmerColor,
                ),
              ),
            ),
            const SizedBox(width: AppSizes.spaceBetweenItems_8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Shimmer(
                          color: AppColorsLight.white,
                          child: Container(
                            height: AppSizes.cartProductNameHigh,
                            decoration: BoxDecoration(
                              color: AppColorsLight.shimmerColor,
                              borderRadius: BorderRadius.circular(
                                AppSizes.borderRadiusSm_4,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: AppSizes.spaceBetweenItems_8),
                      Shimmer(
                        color: AppColorsLight.white,
                        child: Container(
                          width: AppSizes.smIcon_16,
                          height: AppSizes.smIcon_16,
                          decoration: BoxDecoration(
                            color: AppColorsLight.shimmerColor,
                            borderRadius: BorderRadius.circular(
                              AppSizes.borderRadiusMd_8,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBetweenItems_4),
                  Shimmer(
                    color: AppColorsLight.white,
                    child: Container(
                      width: double.infinity,
                      height: AppSizes.cartProductNameHigh,
                      decoration: BoxDecoration(
                        color: AppColorsLight.shimmerColor,
                        borderRadius: BorderRadius.circular(
                          AppSizes.borderRadiusSm_4,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBetweenItems_24),
                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: Shimmer(
                          color: AppColorsLight.white,
                          child: Container(
                            height: AppSizes.cartProductNameHigh,
                            decoration: BoxDecoration(
                              color: AppColorsLight.shimmerColor,
                              borderRadius: BorderRadius.circular(
                                AppSizes.borderRadiusMd_8,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (int i = 0; i < 3; i++) ...[
                            Shimmer(
                              color: AppColorsLight.white,
                              child: Container(
                                width: AppSizes
                                    .cartProductPluseAndNegetiveButtonHighWidth,
                                height: AppSizes
                                        .cartProductPluseAndNegetiveButtonHighWidth +
                                    (i == 1 ? 6 : 0),
                                decoration: BoxDecoration(
                                  color: AppColorsLight.shimmerColor,
                                  borderRadius: BorderRadius.circular(
                                    AppSizes.borderRadiusMd_8,
                                  ),
                                ),
                              ),
                            ),
                            if (i < 2)
                              const SizedBox(
                                  width: AppSizes.spaceBetweenItems_8),
                          ],
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
