import 'package:booking_app/presentation/screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentPage = 0.obs;

  void changePage(int page) {
    currentPage.value = page;
  }

  final List<Widget> pages = [
    const DiscoverScreen(),
    const ProfileScreen(),
    const SettingScreen()
  ];
}
