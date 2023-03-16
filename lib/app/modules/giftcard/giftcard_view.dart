part of views;

class GiftcardView extends GetView<GiftcardController> {
  const GiftcardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.height * 0.18),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: context.height * 0.71,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          gradient: LinearGradient(
                              colors: [pinkColor, orangeColor],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                    ),

                    // light white color for last page
                    Obx(
                      () => AnimatedOpacity(
                          duration: kDefaultDuration,
                          opacity: controller.isAddBuddyBtnTapped.value ? 1 : 0,
                          curve: Curves.fastOutSlowIn,
                          child: Container(
                            height: context.height * 0.71,
                            width: double.infinity,
                            color: Colors.white24,
                          )),
                    ),

                    // background_white_star_shadow
                    Obx(
                      () => AnimatedPositioned(
                          duration: kDefaultDuration,
                          bottom: controller.isInitialAnimationCompleted.value
                              ? -80
                              : 80,
                          right: controller.isInitialAnimationCompleted.value
                              ? -80
                              : 0,
                          left: controller.isInitialAnimationCompleted.value
                              ? -80
                              : 0,
                          child: AnimatedOpacity(
                              duration: kDefaultDuration,
                              opacity:
                                  controller.isAddBuddyBtnTapped.value ? 0 : 1,
                              curve: Curves.linear,
                              child: Image.asset(
                                AppImages.background_white_star_shadow,
                              ))),
                    ),

                    // Card Cropper
                    Positioned(
                      bottom: -1,
                      right: -8,
                      left: -8,
                      child: Image.asset(
                        width: context.width,
                        AppImages.gift_card_bottom_crop,
                        // color: Colors.amber,
                        fit: BoxFit.cover,
                      ),
                    ),

                    // Opened Gift box
                    Obx(
                      () => AnimatedPositioned(
                        duration: kDefaultDuration,
                        bottom: controller.isInitialAnimationCompleted.value
                            ? 35
                            : 5,
                        right: context.width * 0.07,
                        left: context.width * 0.07,
                        child: Image.asset(AppImages.opened_gift),
                      ),
                    ),

                    // Opened Box cap
                    Obx(
                      () => AnimatedPositioned(
                        duration: kDefaultDuration,
                        curve: Curves.easeInOut,
                        top: controller.isInitialAnimationCompleted.value
                            ? -(context.height * 0.157)
                            : (context.height * 0.3),
                        right: context.width * 0.07,
                        left: context.width * 0.07,
                        child: AnimatedOpacity(
                          duration: kDefaultDuration,
                          opacity: controller.isInitialAnimationCompleted.value
                              ? 1
                              : 0,
                          child: Image.asset(AppImages.opened_gift_cap),
                        ),
                      ),
                    ),

                    // Men with laptop
                    Positioned(
                      top: -(context.height * 0.15),
                      right: context.width * 0.35,
                      left: context.width * 0.35,
                      child: Obx(
                        () => AnimatedOpacity(
                          duration: kDefaultDuration,
                          opacity: controller.isAddBuddyBtnTapped.value ? 0 : 1,
                          curve: Curves.linear,
                          child: Image.asset(AppImages.men_with_laptop),
                        ),
                      ),
                    ),

                    // TEXT : ENTER REFERRAL CODE
                    Positioned(
                      top: context.height * 0.06,
                      right: 0,
                      left: 0,
                      child: Obx(() => AnimatedOpacity(
                          duration: kDefaultDuration,
                          opacity: controller.isAddBuddyBtnTapped.value ? 0 : 1,
                          curve: Curves.linear,
                          child: Text("ENTER\nREFERRAL CODE",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont("Lexend").copyWith(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600)))),
                    ),

                    // Gifts Image
                    Positioned(
                      top: context.height * 0.15,
                      right: context.width * 0.22,
                      left: context.width * 0.22,
                      child: Obx(() => AnimatedSwitcher(
                          switchOutCurve: Curves.easeInOutQuad,
                          duration: const Duration(milliseconds: 200),
                          switchInCurve: Curves.easeInOutQuad,
                          transitionBuilder: (child, animation) {
                            return FadeTransition(
                                opacity: animation, child: child);
                          },
                          child: controller.isAddBuddyBtnTapped.value
                              ? Center(
                                  child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: context.width * 0.16,
                                  child: Image.asset(
                                    AppImages.celebrating_face,
                                    fit: BoxFit.cover,
                                    height: 70,
                                  ),
                                ))
                              : Image.asset(AppImages.packed_gift))),
                    ),

                    // Enter Code With Text Field
                    Obx(() => AnimatedPositioned(
                          duration: kDefaultDuration,
                          top: controller.isInitialAnimationCompleted.value
                              ? context.height * 0.33
                              : context.height * 0.28,
                          right: context.width * 0.22,
                          left: context.width * 0.22,
                          child: AnimatedOpacity(
                              duration: kDefaultDuration,
                              opacity: controller.isAddBuddyBtnTapped.value
                                  ? 0
                                  : controller.isInitialAnimationCompleted.value
                                      ? 1
                                      : 0,
                              curve: Curves.linear,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Enter Code",
                                    style:
                                        GoogleFonts.getFont("Lexend").copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      shadows: [
                                        const BoxShadow(
                                          color: Colors.black45,
                                          offset: Offset(0, 3),
                                          blurRadius: 6,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  TextField(
                                    keyboardType: TextInputType.number,
                                    cursorColor: pinkColor,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white54,
                                      hintText: '0000  0000  0000',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        borderSide: BorderSide.none,
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 8),
                                      isCollapsed: true,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide.none,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        )),

                    // Your Referral code accepted
                    Positioned(
                      top: context.height * 0.34,
                      child: IgnorePointer(
                        ignoring: true,
                        child: Obx(() => AnimatedOpacity(
                            duration: kDefaultDuration,
                            opacity:
                                controller.isAddBuddyBtnTapped.value ? 1 : 0,
                            curve: Curves.linear,
                            child: Text(
                              "Your Referral Code\nAccepted",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont('Lexend').copyWith(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ))),
                      ),
                    ),

                    // Elevated Button - Add Your Buddy
                    Positioned(
                      top: context.height * 0.44,
                      child: Obx(() => AnimatedOpacity(
                          duration: kDefaultDuration,
                          opacity: controller.isAddBuddyBtnTapped.value ? 0 : 1,
                          curve: Curves.linear,
                          child: IgnorePointer(
                              ignoring: controller.isAddBuddyBtnTapped.value,
                              child: ElevatedButton(
                                onPressed: () {
                                  FocusScope.of(context).unfocus();
                                  controller.isAddBuddyBtnTapped.value = true;
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF7B61FF),
                                    fixedSize: Size(context.width * 0.7, 30),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    side: const BorderSide(color: Colors.black),
                                    shadowColor: Colors.black,
                                    elevation: 7),
                                child: Text(
                                  "Add Your Buddy",
                                  style: GoogleFonts.getFont('Lexend').copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              )))),
                    ),

                    // Star 1
                    Obx(() => AnimatedPositioned(
                          duration: kDefaultDuration,
                          top: controller.isAddBuddyBtnTapped.value
                              ? context.height * 0.09
                              : context.height * 0.11,
                          left: controller.isAddBuddyBtnTapped.value ? 2 : 0,
                          child: Image.asset(
                            AppImages.star_1,
                            width: 100,
                          ),
                        )),

                    // Star 2
                    Obx(
                      () => AnimatedPositioned(
                        duration: kDefaultDuration,
                        top: context.height * 0.02,
                        right: controller.isAddBuddyBtnTapped.value ? 10 : 5,
                        child: Image.asset(
                          AppImages.star_2,
                          width: 50,
                        ),
                      ),
                    ),

                    // Star 2 small
                    Positioned(
                      top: context.height * 0.3,
                      right: 0,
                      child: Image.asset(
                        AppImages.star_2_small,
                        width: 55,
                      ),
                    ),

                    // Star 3
                    Obx(
                      () => AnimatedPositioned(
                        duration: kDefaultDuration,
                        top: context.height * 0.14,
                        left: controller.isAddBuddyBtnTapped.value ? 100 : 0,
                        child: Image.asset(
                          AppImages.star_3,
                          width: controller.isAddBuddyBtnTapped.value ? 0 : 45,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
          ),

          // GIF celebrating up
          Positioned(
            top: context.height * 0.22,
            right: -150,
            child: IgnorePointer(
              ignoring: true,
              child: Obx(() => controller.isAddBuddyBtnTapped.value
                  ? const SizedBox()
                  : Image.asset(
                      AppImages.celebrating_up_rounded,
                      height: 300,
                    )),
            ),
          ),
        ],
      ),
    );
  }
}
