import 'package:get/get.dart';

import 'controllers.dart';

class TapToStartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TapToStartController>(
      () => TapToStartController(),
    );
    Get.lazyPut<GiftcardController>(
      () => GiftcardController(),
    );
  }
}

class GiftcardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GiftcardController>(
      () => GiftcardController(),
    );
  }
}
