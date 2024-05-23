import 'package:fe_12345/controller/tool.dart';
import 'package:fe_12345/pb/grpc/v1/api.pb.dart';
import 'package:fe_12345/pb/pbentity/uprofile.pb.dart';
import 'package:fe_12345/repository/grpc_api.dart' as api;
import 'package:fe_12345/utils/package.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class SettingsController extends GetxController {
  final themeMode = ThemeMode.system.obs;

  final locale = const Locale('en').obs;

  final useStream = true.obs;

  final version = "1.0.0".obs;

  final selectedBot = "".obs;

  final themeColor = Color(0xff2196f3).obs;

  var profile = Uprofile();

  static SettingsController get to => Get.find();

  @override
  void onInit() async {
    var ok = await onLogin();
    if (!ok) {
      profile.themeColor = $fixnum.Int64(Colors.blueAccent.value);
      var color = Colors.blueAccent;
      setThemeColor(color);
      locale.value.languageCode == 'en';
    }
    super.onInit();
  }

  void onLogout() {
    selectedBot.value = "";
  }

  Future<bool> onLogin() async {
    var rsp = await api.GrpcApi().c().getProfile(GetProfileRequest());
    if (rsp.eC.code != 0) {
      Logger().e("getProfile error: ${rsp.eC.msg}");
      return false;
    }
    profile = rsp.profile;

    if (profile.themeMode == 'dark') {
      Get.changeThemeMode(ThemeMode.dark);
    } else if (profile.themeMode == 'light') {
      Get.changeThemeMode(ThemeMode.light);
    } else {
      Get.changeThemeMode(ThemeMode.system);
    }

    if (profile.themeColor != 0) {
      setThemeColor(Color(profile.themeColor.toInt()));
    }

    if (profile.locale != '') {
      locale.value = Locale(profile.locale);
    }

    useStream.value = profile.useStream;
    selectedBot.value = profile.selectedBot;

    if (selectedBot.value == '') {
      ToolController toolCtr = Get.find();
      var bots = toolCtr.getBotList();
      if (bots.length > 0) {
        selectedBot.value = bots[0].id;
      }
    }
    return true;
  }

  Future<void> checkDefaultSelectedBot() async {
    if (selectedBot.value == '') {
      ToolController toolCtr = Get.find();
      var bots = toolCtr.getBotList();
      if (bots.length > 0) {
        selectedBot.value = bots[0].id;
      }
    }
  }

  void updateProfile() async {
    var rsp = await api.GrpcApi()
        .c()
        .updateProfile(UpdateProfileRequest(profile: profile));
    if (rsp.eC.code != 0) {
      Logger().e("updateProfile error: ${rsp.eC.msg}");
      return;
    }
  }

  initAppVersion() async {
    version.value = await getAppVersion();
  }

  void setThemeMode(ThemeMode model) async {
    Get.changeThemeMode(model);
    if (model == ThemeMode.system) {
      profile.themeMode = 'system';
    } else if (model == ThemeMode.light) {
      profile.themeMode = 'light';
    } else if (model == ThemeMode.dark) {
      profile.themeMode = 'dark';
    }
    updateProfile();
  }

  void setThemeColor(Color color) async {
    Get.changeTheme(ThemeData(
        useMaterial3: true,
        colorSchemeSeed: color,
        textTheme: TextTheme(
          titleLarge: TextStyle(color: color),
          titleMedium: TextStyle(color: color),
          titleSmall: TextStyle(color: color),
          labelLarge: TextStyle(color: color),
          labelMedium: TextStyle(color: color),
          labelSmall: TextStyle(color: color),
          bodyLarge: TextStyle(color: color),
          bodyMedium: TextStyle(color: color),
          bodySmall: TextStyle(color: color),
        )));
    profile.themeColor = $fixnum.Int64(color.value);
    themeColor.value = color;
    updateProfile();
  }

  void setUseStream(bool value) async {
    useStream.value = value;
    profile.useStream = value;
    updateProfile();
  }

  void setSelectedBot(String value) async {
    profile.selectedBot = value;
    selectedBot.value = value;
    Logger().d("setSelectedBot $value");
    updateProfile();
    update();
  }

  void setLocale(Locale lol) async {
    profile.locale = lol.languageCode;
    locale.value = lol;
    Get.updateLocale(lol);
    updateProfile();
  }

  void switchLocale() {
    locale.value =
        _parseLocale(locale.value.languageCode == 'en' ? 'zh' : 'en');
  }

  Locale _parseLocale(String locale) {
    switch (locale) {
      case 'en':
        return const Locale('en');
      case 'zh':
        return const Locale('zh');
      default:
        throw Exception('system locale');
    }
  }
}
