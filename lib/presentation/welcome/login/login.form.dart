import 'package:booking_app/generated/locales.g.dart';
import 'package:booking_app/infrastructure/extention/extensions.dart';
import 'package:booking_app/infrastructure/theme/theme.dart';
import 'package:booking_app/infrastructure/widgets/app.input.dart';
import 'package:booking_app/infrastructure/widgets/primary.button.dart';
import 'package:booking_app/presentation/welcome/login/controllers/login.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends GetView<LoginController> {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeStyles.height48),
        SizedBox(
          width: Get.width,
          child: Text(
            LocaleKeys.login.tr,
            style: TextStyles.h3,
          ),
        ),
        SizedBox(height: SizeStyles.height16),
        AppInput(label: LocaleKeys.login.tr),
        SizedBox(height: SizeStyles.height16),
        AppInput(
            label: LocaleKeys.password.tr,
            suffix: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.lock,
                color: ColorStyles.ink02,
              ),
            )),
        SizedBox(height: SizeStyles.height16),
        PrimaryButton(buttonText: LocaleKeys.login.tr, onPressed: () {})
            .type3
            .resize(Get.width, SizeStyles.height56),
      ],
    ).marginOnly(
      left: SizeStyles.width24,
      right: SizeStyles.width24,
      bottom: SizeStyles.height16,
    );
  }
}
