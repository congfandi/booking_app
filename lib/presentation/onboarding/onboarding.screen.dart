import 'package:booking_app/infrastructure/theme/theme.dart';
import 'package:booking_app/presentation/onboarding/onboarding.button.dart';
import 'package:booking_app/presentation/onboarding/onboarding.indicator.dart';
import 'package:booking_app/presentation/onboarding/onboarding.swiping.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/onboarding.controller.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.ink06,
      appBar: AppBar(
        backgroundColor: ColorStyles.ink06,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const OnboardingSwiping(),
          const OnboardingIndicator(),
          const OnBoardingButton(),
          SizedBox(
            height: SizeStyles.height30,
          )
        ],
      ),
    );
  }
}
