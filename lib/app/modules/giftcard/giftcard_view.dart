part of views;

class GiftcardView extends GetView<GiftcardController> {
  const GiftcardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: change status bar icon color to black
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
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
                AnimatedPositioned(
                  duration: kDefaultDuration,
                  bottom: 35, // TODO: 5 : 35
                  right: context.width * 0.07,
                  left: context.width * 0.07,
                  child: Image.asset(AppImages.opened_gift),
                ),

                // Opened Box cap
                Positioned(
                  top: -(context.height * 0.157),
                  right: context.width * 0.07,
                  left: context.width * 0.07,
                  child: Image.asset(AppImages.opened_gift_cap),
                ),

                // Men with laptop
                Positioned(
                  top: -(context.height * 0.15),
                  right: context.width * 0.35,
                  left: context.width * 0.35,
                  child: Image.asset(AppImages.men_with_laptop),
                ),

                // TEXT : ENTER REFERRAL CODE
                Positioned(
                  top: context.height * 0.06,
                  right: 0,
                  left: 0,
                  // TODO:add google font
                  child: const Text("ENTER\nREFERRAL CODE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600)),
                ),

                // Gifts Image
                Positioned(
                  top: context.height * 0.14,
                  right: context.width * 0.22,
                  left: context.width * 0.22,
                  child: Image.asset(AppImages.packed_gift),
                ),

                // Enter Code With Text Field
                Positioned(
                  top: context.height * 0.33,
                  right: context.width * 0.22,
                  left: context.width * 0.22,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Enter Code",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          shadows: [
                            BoxShadow(
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
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 8),
                          isCollapsed: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Elevated Button - Add Your Buddy
                Positioned(
                  top: context.height * 0.44,
                  child: ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
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
                    child: const Text(
                      "Add Your Buddy",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),

                // Star 1
                Positioned(
                  top: context.height * 0.11,
                  left: 0,
                  child: Image.asset(
                    AppImages.star_1,
                    width: 100,
                  ),
                ),

                // Star 2
                Positioned(
                  top: context.height * 0.02,
                  right: 5,
                  child: Image.asset(
                    AppImages.star_2,
                    width: 50,
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

                // Star 2 small
                Positioned(
                  top: context.height * 0.14,
                  left: 0,
                  child: Image.asset(
                    AppImages.star_3,
                    width: 45,
                  ),
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
