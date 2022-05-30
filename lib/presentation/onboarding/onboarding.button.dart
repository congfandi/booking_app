import 'package:booking_app/generated/locales.g.dart';
import 'package:booking_app/infrastructure/extention/extensions.dart';
import 'package:booking_app/infrastructure/theme/theme.dart';
import 'package:booking_app/infrastructure/widgets/widget.dart';
import 'package:booking_app/presentation/onboarding/controllers/onboarding.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingButton extends GetView<OnboardingController> {
  const OnBoardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SecondaryButton(
            buttonText: LocaleKeys.skip.tr,
            onPressed: () {
              controller.skip();
            }).type3.resize(146, 56),
        SizedBox(width: SizeStyles.width16),
        PrimaryButton(
            buttonText: LocaleKeys.next.tr,
            onPressed: () {
              controller.nextPage();
            }).type3.resize(146, 56),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    ).resize(Get.width, 56);
  }
}
