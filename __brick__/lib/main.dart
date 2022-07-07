import 'dart:io';

import 'package:get_storage/get_storage.dart';
import 'package:{{name}}/bindings/auth_binding.dart';
import 'package:{{name}}/constants/constants.dart';
import 'package:{{name}}/controllers/controllers.dart';
import 'package:{{name}}/services/services.dart';
import 'package:{{name}}/views/components/components.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  await GetStorage.init();

  Get.put<ThemeController>(ThemeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // check if there is a new version of the app on the store

  //final newVersion = NewVersion();
  @override
  Widget build(BuildContext context) {
    // newVersion.showAlertIfNecessary(context: context);

    ThemeController.to.getThemeModeFromStore();
    return GetBuilder<ThemeController>(
      builder: (ThemeController) => Loading(
        child: GetMaterialApp(
          color: const Color(0XFF688CFF),
          title: '{{name}}',
          debugShowCheckedModeBanner: false,
          //defaultTransition: Transition.fade,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: ThemeMode.system,
          initialRoute: "/",
          getPages: AppRoutes.routes,
          initialBinding: AuthBinding(),
        ),
      ),
    );
  }
}
