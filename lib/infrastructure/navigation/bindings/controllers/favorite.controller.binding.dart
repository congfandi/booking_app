import 'package:get/get.dart';

import '../../../../presentation/discover/favorite/controllers/favorite.controller.dart';

class FavoriteControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoriteController>(
      () => FavoriteController(),
    );
  }
}
