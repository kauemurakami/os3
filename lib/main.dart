import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:os_tres/app/modules/login/login_page.dart';

import 'app/modules/login/login_binding.dart';
import 'app/routes/app_pages.dart';
import 'app/theme/app_colors.dart';
import 'app/theme/app_theme.dart';
import 'app/widgets/custom_loading.dart';

void main() {
  runApp(GlobalLoaderOverlay(
    useDefaultLoading: false,
    overlayColor: mainColor,
    overlayOpacity: 0.7,
    overlayWidget: CustomLoading(),
    child: GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.LOGIN,
      initialBinding: LoginBinding(),
      home: LoginPage(),
      getPages: AppPages.pages,
      theme: appThemeData,
    ),
  ));
}
