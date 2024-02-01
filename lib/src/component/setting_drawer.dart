import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:study_flutter_theme/src/component/app_font.dart';
import 'package:study_flutter_theme/src/controller/theme_controller.dart';

class SettingDrawer extends GetView<ThemeController> {
  const SettingDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: const Color(0xffEAE8F4),
      width: MediaQuery.of(context).size.width * 0.8,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Obx(() => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppFont(
                        controller.themeMode.value == ThemeMode.light
                            ? '라이트 모드'
                            : '다크 모드',
                        size: 23,
                      ),
                      Switch(
                        value: controller.themeMode.value == ThemeMode.light,
                        inactiveThumbColor: const Color(0xff28222B),
                        inactiveTrackColor: const Color(0xffDEDEDE),
                        onChanged: (ck) {
                          controller.updateMode(
                              ck ? ThemeMode.light : ThemeMode.dark,
                              isSaveLocalData: true);
                        },
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
