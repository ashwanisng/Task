import 'package:get/get.dart';
import 'package:test/app/modules/detail/controllers/detail_controller.dart';

import 'package:test/app/modules/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<DetailController>(
      () => DetailController(),
      fenix: true,
    );
  }
}
