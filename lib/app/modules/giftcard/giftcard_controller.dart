part of controllers;

class GiftcardController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  RxBool isInitialAnimationCompleted = false.obs;
  RxBool isAddBuddyBtnTapped = false.obs;

  @override
  void onReady() {
    super.onReady();
    Timer(const Duration(milliseconds: 500), () {
      isInitialAnimationCompleted.value = true;
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
