import 'package:booking_app/app/data/repository/onboarding/onboarding.dart';
import 'package:booking_app/infrastructure/theme/theme.dart';
import 'package:booking_app/presentation/onboarding/controllers/onboarding.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingSwiping extends GetView<OnboardingController> {
  const OnboardingSwiping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller.pageController,
        itemBuilder: (context, index) {
          return _item(controller.listOnboarding[index]);
        },
        itemCount: controller.listOnboarding.length,
      ),
    );
  }

  Widget _item(Onboarding onboarding) {
    return Column(
      children: [
        Image.asset(
          onboarding.image ?? "",
          height: SizeStyles.height300,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: SizeStyles.height32,
        ),
        Text(
          onboarding.title ?? "",
          style: TextStyles.h3,
        ),
        SizedBox(
          height: SizeStyles.height8,
        ),
        Text(
          onboarding.description ?? "",
          style: TextStyles.paragraphMedium.copyWith(color: ColorStyles.ink02),
          textAlign: TextAlign.center,
        ).marginOnly(
          left: SizeStyles.width16,
          right: SizeStyles.width16,
        ),
      ],
    );
  }
}
