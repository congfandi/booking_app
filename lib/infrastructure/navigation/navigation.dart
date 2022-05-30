import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  const EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.ONBOARDING,
      page: () => OnboardingScreen(),
      binding: OnboardingControllerBinding(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomeScreen(),
      binding: WelcomeControllerBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterScreen(),
      binding: RegisterControllerBinding(),
    ),
    GetPage(
      name: Routes.DISCOVER,
      page: () => DiscoverScreen(),
      binding: DiscoverControllerBinding(),
    ),
    GetPage(
      name: Routes.TRIPS,
      page: () => TripsScreen(),
      binding: TripsControllerBinding(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfileScreen(),
      binding: ProfileControllerBinding(),
    ),
    GetPage(
      name: Routes.SETTING,
      page: () => SettingScreen(),
      binding: SettingControllerBinding(),
    ),
    GetPage(
      name: Routes.DETAIL_TRIPS,
      page: () => DetailTripsScreen(),
      binding: DetailTripsControllerBinding(),
    ),
    GetPage(
      name: Routes.FAVORITE,
      page: () => FavoriteScreen(),
      binding: FavoriteControllerBinding(),
    ),
  ];
}
