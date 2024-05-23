import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:fe_12345/configs/translations.dart';
import 'package:fe_12345/controller/account.dart';
import 'package:fe_12345/controller/dialog.dart';
import 'package:fe_12345/controller/id.dart';
import 'package:fe_12345/controller/message.dart';
import 'package:fe_12345/controller/nav.dart';
import 'package:fe_12345/controller/settings.dart';
import 'package:fe_12345/controller/store.dart';
import 'package:fe_12345/controller/tool.dart';
import 'package:fe_12345/pages/unknown.dart';
import 'package:fe_12345/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:media_kit/media_kit.dart';

void main(List<String> args) async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  if (runWebViewTitleBarWidget(args)) {
    return;
  }
  var idctrl = IdController();
  await idctrl.onInit();
  Get.put(idctrl);

  Get.put(StoreController());

  Get.put(SettingsController());
  Get.put(AccountController());

  var toolCtrl = ToolController();
  await toolCtrl.onInit();
  Get.put(toolCtrl);

  var dailogCtrl = DialogController();
  await dailogCtrl.onInit();
  Get.put(dailogCtrl);

  Get.put(MessageController());
  Get.put(NavController());

  SettingsController settingsCtr = Get.find();
  await settingsCtr.checkDefaultSelectedBot();
  MediaKit.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '12345.blue',
      initialRoute: '/',
      getPages: routes,
      unknownRoute:
          GetPage(name: '/not_found', page: () => const UnknownRoutePage()),
      theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.light,
          colorSchemeSeed: Colors.blueAccent,
          textTheme: const TextTheme(
            titleLarge: TextStyle(color: Colors.blue),
            titleMedium: TextStyle(color: Colors.blue),
            titleSmall: TextStyle(color: Colors.blue),
            labelLarge: TextStyle(color: Colors.blue),
            labelMedium: TextStyle(color: Colors.blue),
            labelSmall: TextStyle(color: Colors.blue),
            bodyLarge: TextStyle(color: Colors.blue),
            bodyMedium: TextStyle(color: Colors.blue),
            bodySmall: TextStyle(color: Colors.blue),
          )),
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      locale: const Locale('zh'),
      translations: MyTranslations(),
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
    );
  }
}
