part of views;

class TapToStartView extends GetView<TapToStartController> {
  const TapToStartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TapToStartView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TapToStartView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
