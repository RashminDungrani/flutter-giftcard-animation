// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../modules/bindings.dart';
import '../modules/views.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TAP_TO_START;

  static final routes = [
    GetPage(
      name: _Paths.TAP_TO_START,
      page: () => TapToStartView(),
      binding: TapToStartBinding(),
    ),
  ];
}
