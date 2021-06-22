import 'package:flutter/material.dart' show ThemeMode;
import 'package:get/get.dart';

class ThemeService extends GetxController {
  void changeTheme() {
    if (!Get.isDarkMode) {
      Get.changeThemeMode(ThemeMode.dark);
    } else {
      Get.changeThemeMode(ThemeMode.light);
    }

    update();
  }
}
