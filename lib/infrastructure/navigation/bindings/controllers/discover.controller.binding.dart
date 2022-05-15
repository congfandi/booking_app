import 'package:get/get.dart';

import '../../../../presentation/discover/controllers/discover.controller.dart';

class DiscoverControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiscoverController>(
      () => DiscoverController(),
    );
  }
}
