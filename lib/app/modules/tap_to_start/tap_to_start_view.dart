part of views;

class TapToStartView extends StatelessWidget {
  TapToStartView({Key? key}) : super(key: key);
  final TapToStartController controller = Get.put(TapToStartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushReplacement(CustomPageRoute(const GiftcardView()));
          },
          child: Container(
            height: context.height,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [pinkColor, orangeColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Center(
              child: Text(
                "TAP",
                style: GoogleFonts.getFont("Poppins").copyWith(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  shadows: [
                    const Shadow(
                      color: Colors.black,
                      offset: Offset(0, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
