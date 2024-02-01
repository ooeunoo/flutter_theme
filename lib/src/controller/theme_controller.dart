import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends FullLifeCycleController with FullLifeCycleMixin {
  final SharedPreferences prefs;

  ThemeController(this.prefs);

  Rx<ThemeMode> themeMode = ThemeMode.light.obs;

  @override
  void onInit() {
    super.onInit();
    init();
  }

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onHidden() {
    // TODO: implement onHidden
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
    init();
  }

  init() {
    var isDarkModeData = isDarkMode();

    if (isDarkModeData == null) {
      updateMode(Get.isPlatformDarkMode ? ThemeMode.dark : ThemeMode.light);
    } else {
      updateMode(isDarkModeData ? ThemeMode.dark : ThemeMode.light);
    }
  }

  updateMode(ThemeMode mode, {bool isSaveLocalData = false}) {
    themeMode(mode);
    if (isSaveLocalData) {
      saveLocalThemeMode();
    }
  }

  void saveLocalThemeMode() {
    prefs.setBool('isDarkMode', themeMode.value == ThemeMode.dark);
  }

  bool? isDarkMode() {
    return prefs.getBool('isDarkMode');
  }
}
