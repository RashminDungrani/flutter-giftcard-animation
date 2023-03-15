import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'app/data/app_config.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConfig.appName,
      // darkTheme: Themes.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: Routes.TAP_TO_START,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: ResponsiveWrapper.builder(
          child,
          maxWidth: 1440,
          minWidth: 320,
          defaultScale: true,
          breakpoints: [
            // const ResponsiveBreakpoint.autoScale(320, name: MOBILE),
            ResponsiveBreakpoint.autoScale(
                context.isPhone ? 450 : 430, // 450 for mobile
                name: MOBILE),
            const ResponsiveBreakpoint.autoScale(1150, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ],
          // background: const ColoredBox(color: blackColor)),
        ),
      ),
    );
  }
}
