import 'package:get/get.dart';

import '../controllers/verify_page_controller.dart';

class VerifyPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyPageController>(
      () => VerifyPageController(),
    );
  }
}
