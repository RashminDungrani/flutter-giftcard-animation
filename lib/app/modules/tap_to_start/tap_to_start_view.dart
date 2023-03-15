part of views;

class TapToStartView extends GetView<TapToStartController> {
  const TapToStartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            Navigator.of(context).push(CustomPageRoute(const GiftcardView()));
          },
          child: Container(
            height: context.height,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [pinkColor, orangeColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: const Center(
              child: Text("TAP",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      ),
                    ],
                  )),
            ),
          )),
    );
  }
}
