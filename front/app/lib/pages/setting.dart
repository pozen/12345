import 'package:fe_12345/controller/id.dart';
import 'package:fe_12345/controller/settings.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends GetResponsiveView<SettingsController> {
  SettingPage({super.key});

  final _idController = Get.find<IdController>();
  final _settingsController = Get.find<SettingsController>();

  var screenPickerColor = Colors.blue; // Material blue.
  final dialogPickerColor = Colors.red; // Material red.
  final dialogSelectColor = const Color(0xFFA239CA); // A purple color.

  @override
  Widget? builder() {
    return Scaffold(
      body: GetX<SettingsController>(
        init: _settingsController,
        builder: (controller) {
        return Column(children: [
          Expanded(child: ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                dense: true,
                title: Text('theme'.tr,
                    style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(screen.context).colorScheme.primary)),
              ),
              RadioListTile(
                title: Text('themeSystem'.tr, style: Theme.of(screen.context).textTheme.bodyMedium),
                value: ThemeMode.system,
                groupValue: controller.themeMode.value,
                onChanged: (value) {
                  controller.setThemeMode(ThemeMode.system);
                },
              ),
              RadioListTile(
                title: Text('themeDark'.tr, style: Theme.of(screen.context).textTheme.bodyMedium),
                value: ThemeMode.dark,
                groupValue: controller.themeMode.value,
                onChanged: (value) {
                  controller.setThemeMode(ThemeMode.dark);
                },
              ),
              RadioListTile(
                title: Text('themeLight'.tr, style: Theme.of(screen.context).textTheme.bodyMedium),
                value: ThemeMode.light,
                groupValue: _settingsController.themeMode.value,
                onChanged: (value) {
                  controller.setThemeMode(ThemeMode.light);
                },
              ),
              const Divider(),
              ListTile(
                title: Text('themeColor'.tr, style: Theme.of(screen.context).textTheme.bodyMedium),
                //subtitle:
                //    Text('${ColorTools.materialNameAndCode(screenPickerColor)} '
                //        'aka ${ColorTools.nameThatColor(screenPickerColor)}'),
                trailing: ColorIndicator(
                  width: 44,
                  height: 44,
                  borderRadius: 22,
                  color: _settingsController.themeColor.value,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Card(
                    elevation: 2,
                    child: ColorPicker(
                      // Use the screenPickerColor as start color.
                      color: screenPickerColor,
                      // Update the screenPickerColor using the callback.
                      onColorChanged: (Color color) =>
                          (_settingsController.setThemeColor(color)),
                      width: 44,
                      height: 44,
                      borderRadius: 22,
                      heading: Text(
                        'selectColor'.tr,
                        style: Theme.of(screen.context).textTheme.headlineSmall,
                      ),
                      subheading: Text(
                        'selectColorShade'.tr,
                        style: Theme.of(screen.context).textTheme.titleSmall,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                dense: true,
                title: Text('language'.tr,
                    style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(screen.context).colorScheme.primary)),
              ),
              RadioListTile(
                title: Text('chinese'.tr, style: Theme.of(screen.context).textTheme.bodyMedium),
                value: 'zh',
                groupValue: controller.locale.value.languageCode,
                onChanged: (value) {
                  controller.setLocale(const Locale('zh'));
                },
              ),
              RadioListTile(
                title: Text('english'.tr, style: Theme.of(screen.context).textTheme.bodyMedium),
                value: 'en',
                groupValue: controller.locale.value.languageCode,
                onChanged: (value) {
                  controller.setLocale(const Locale('en'));
                },
              ),
            ],
          )),
        ]);
      }),
    );
  }
}
