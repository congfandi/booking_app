import 'package:booking_app/app/data/repository/onboarding/onboarding.dart';
import 'package:booking_app/generated/locales.g.dart';
import 'package:booking_app/infrastructure/navigation/routes.dart';
import 'package:booking_app/infrastructure/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  RxInt currentPage = 0.obs;
  PageController pageController = PageController();
  final List<Onboarding> listOnboarding = [
    Onboarding(
      title: LocaleKeys.findRoomie.tr,
      description: LocaleKeys.weHaveHelped.tr,
      image: Assets.cittaStanding,
    ),
    Onboarding(
      title: LocaleKeys.yourRoomate.tr,
      description: LocaleKeys.weHaveHelped.tr,
      image: Assets.cittaStanding2,
    ),
    Onboarding(
      title: LocaleKeys.findYourMatch.tr,
      description: LocaleKeys.weHaveHelped.tr,
      image: Assets.cittaStanding1,
    ),
  ];

  void nextPage() {
    if (currentPage.value >= listOnboarding.length - 1) {
      currentPage(0);
    } else {
      currentPage.value++;
    }
    pageController.animateToPage(currentPage.value,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  void skip() {
    Get.offAllNamed(Routes.LOGIN);
  }

  @override
  void onInit() {
    super.onInit();
    pageController.addListener(() {
      currentPage.value = pageController.page?.toInt() ?? 0;
    });
  }
}
