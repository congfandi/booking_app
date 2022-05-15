import 'package:get/get.dart';

import '../../../../presentation/discover/trips/detail.trips/controllers/detail_trips.controller.dart';

class DetailTripsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailTripsController>(
      () => DetailTripsController(),
    );
  }
}
