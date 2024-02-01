import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:study_flutter_theme/src/app.dart';
import 'package:study_flutter_theme/src/controller/theme_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  Get.put(ThemeController(prefs), permanent: true);

  runApp(const MyApp());
}
