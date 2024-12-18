import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SwitchLanguagesController extends GetxController {
  var selectedLanguageIndex = 0.obs;

  final languages = [
    {'code': 'en_US', 'label': 'English'},
    {'code': 'bn_BD', 'label': 'Bangla'},
    {'code': 'hi_IN', 'label': 'Hindi'},
  ];

  @override
  void onInit() {
    super.onInit();
    loadLanguage();
  }

  Future<void> loadLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    selectedLanguageIndex.value = prefs.getInt('languageIndex') ?? 0;
    Get.updateLocale(Locale(languages[selectedLanguageIndex.value]['code']!));
  }

  Future<void> saveLanguage(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('languageIndex', index);
    selectedLanguageIndex.value = index;
    Get.updateLocale(Locale(languages[index]['code']!));
  }
}
