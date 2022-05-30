import 'package:booking_app/generated/locales.g.dart';
import 'package:booking_app/infrastructure/theme/theme.dart';
import 'package:booking_app/presentation/welcome/login/controllers/login.controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginFooter extends GetView<LoginController> {
  const LoginFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
              text: LocaleKeys.forgotPassword.tr + " ",
              style:
                  TextStyles.paragraphSmall.copyWith(color: ColorStyles.ink02),
              children: [
                TextSpan(
                  text: LocaleKeys.getNew.tr,
                  style: TextStyles.paragraphSmallBold.copyWith(
                    color: ColorStyles.ink01,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.toNamed('/forgot-password'),
                )
              ]),
        ),
        SizedBox(
          height: SizeStyles.height8,
        ),
        RichText(
          text: TextSpan(
              text: LocaleKeys.doYouHaveAccount.tr + " ",
              style:
                  TextStyles.paragraphSmall.copyWith(color: ColorStyles.ink02),
              children: [
                TextSpan(
                  text: LocaleKeys.creaetNew.tr,
                  style: TextStyles.paragraphSmallBold.copyWith(
                    color: ColorStyles.ink01,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.toNamed('/forgot-password'),
                )
              ]),
        ),
        RSizedBox(
          height: SizeStyles.height30,
        ),
      ],
    );
  }
}
