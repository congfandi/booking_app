import 'package:booking_app/generated/locales.g.dart';
import 'package:booking_app/infrastructure/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.location_on_rounded),
              label: LocaleKeys.trips.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.favorite),
              label: LocaleKeys.profile.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: LocaleKeys.settings.tr,
            ),
          ],
          currentIndex: controller.currentPage.value,
          onTap: controller.changePage,
          selectedItemColor: ColorStyles.ink01,
          unselectedItemColor: ColorStyles.ink03,
          elevation: 0,
          backgroundColor: ColorStyles.ink06,
          type: BottomNavigationBarType.fixed,
        );
      }),
      body: Obx(() => controller.pages[controller.currentPage.value]),
    );
  }
}
