import 'package:booking_app/generated/locales.g.dart';
import 'package:booking_app/infrastructure/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
   const Main(this.initialRoute, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      child: GetMaterialApp(
        initialRoute: initialRoute,
        locale: const Locale('en', 'US'),
        translationsKeys: AppTranslation.translations,
        theme: ThemeData(
          fontFamily: 'Poppins',
          primaryColor: ColorStyles.ink01,
          scaffoldBackgroundColor: ColorStyles.ink06,
          backgroundColor: ColorStyles.ink04,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        getPages: Nav.routes,
      ),
    );
  }
}
