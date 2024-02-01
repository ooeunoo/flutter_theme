import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:study_flutter_theme/src/controller/theme_controller.dart';
import 'package:study_flutter_theme/src/page/home.dart';

class MyApp extends GetView<ThemeController> {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          title: 'Flutter Demo',
          theme: lightMode,
          darkTheme: darkMode,
          themeMode: controller.themeMode.value,
          home: const Home(),
        ));
  }
}

ThemeData lightMode = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    textTheme: TextTheme(
      titleLarge: const TextStyle(color: Color(0xff28222B)),
      titleSmall: TextStyle(color: const Color(0xff28222B).withOpacity(0.7)),
      labelMedium: const TextStyle(color: Color(0xff9279C8)),
    ),
    buttonTheme: const ButtonThemeData(
        colorScheme: ColorScheme.light(primaryContainer: Color(0xff9279C8))),
    iconTheme: const IconThemeData(color: Colors.black),
    cardTheme: const CardTheme(color: Colors.white),
    dividerTheme: const DividerThemeData(color: Color(0xffEAE8F4)),
    drawerTheme: const DrawerThemeData(backgroundColor: Color(0xffEAE8F4)),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Colors.white),
        trackColor: MaterialStateProperty.all(const Color(0xff9279C8))),
    scaffoldBackgroundColor: const Color(0xffEAE8F4));

ThemeData darkMode = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    textTheme: TextTheme(
      titleLarge: const TextStyle(color: Color(0xffDADADA)),
      titleSmall: TextStyle(color: const Color(0xffDADADA).withOpacity(0.7)),
      labelMedium: const TextStyle(color: Color(0xff8ABD93)),
    ),
    buttonTheme: const ButtonThemeData(
        colorScheme: ColorScheme.dark(primaryContainer: Color(0xff8ABD93))),
    iconTheme: const IconThemeData(color: Colors.white),
    cardTheme: const CardTheme(color: Color(0xff342C38)),
    dividerTheme: const DividerThemeData(color: Color(0xff28222B)),
    drawerTheme: const DrawerThemeData(backgroundColor: Color(0xff28222B)),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Colors.black),
        trackColor: MaterialStateProperty.all(const Color(0xffDEDEDE))),
    scaffoldBackgroundColor: const Color(0xff28222B));
