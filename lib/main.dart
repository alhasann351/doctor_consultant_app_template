import 'package:doctor_consultant_app_template/resources/localization/languages.dart';
import 'package:doctor_consultant_app_template/resources/routes/app_routes.dart';
import 'package:doctor_consultant_app_template/resources/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes().themeData,
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
