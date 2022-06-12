import 'package:booking_app/generated/locales.g.dart';
import 'package:booking_app/infrastructure/navigation/routes.dart';
import 'package:booking_app/infrastructure/theme/theme.dart';
import 'package:booking_app/infrastructure/utils/assets.dart';
import 'package:booking_app/infrastructure/widgets/primary.button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/welcome.controller.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.accentGreen,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(SizeStyles.width32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(Assets.cittaAvatar),
              SizedBox(height: SizeStyles.height24),
              Text(
                LocaleKeys.findYourRoomie.tr,
                style: TextStyles.h4,
              ),
              SizedBox(height: SizeStyles.height8),
              Text(
                LocaleKeys.weHaveHelped.tr,
                style: TextStyles.paragraphMedium
                    .copyWith(color: ColorStyles.ink02),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeStyles.height24),
              SizedBox(
                width: Get.width,
                child: PrimaryButton(
                  buttonText: LocaleKeys.letsGo.tr,
                  onPressed: () {
                    Get.offAllNamed(Routes.HOME);
                  },
                ).type3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
