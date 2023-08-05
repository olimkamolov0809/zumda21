import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:zumda/app/app_constants.dart';
import 'package:zumda/app/app_pages.dart';

import 'app/app_themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Zumda",
      theme: Appthemes.LIGHT_THEME,
      navigatorKey: NAVIGATOR_KEY,
      getPages: AppPages.getPages,
    );
  }
}
