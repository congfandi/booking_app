import 'package:get/get.dart';

import '../../../../presentation/discover/trips/controllers/trips.controller.dart';

class TripsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TripsController>(
      () => TripsController(),
    );
  }
}
