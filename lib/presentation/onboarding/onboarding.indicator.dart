import 'package:booking_app/infrastructure/theme/theme.dart';
import 'package:booking_app/presentation/onboarding/controllers/onboarding.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingIndicator extends GetView<OnboardingController> {
  const OnboardingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        controller.listOnboarding.length,
        (index) => Obx(
          () => Container(
            height: 6,
            width: controller.currentPage.value == index ? 16 : 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: controller.currentPage.value == index
                  ? ColorStyles.accentPink
                  : ColorStyles.ink03,
            ),
          ).marginOnly(
            left: index == 1 ? 12 : 0,
            right: index == 1 ? 12 : 0,
          ),
        ),
      ),
    ).paddingOnly(top: SizeStyles.height46, bottom: SizeStyles.height46);
  }
}
