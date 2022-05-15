import 'package:get/get.dart';

import '../../../../presentation/discover/profile/controllers/profile.controller.dart';

class ProfileControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
