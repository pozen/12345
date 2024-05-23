import 'dart:convert';

import 'package:casdoor_flutter_sdk/casdoor_flutter_sdk.dart';
import 'package:fe_12345/controller/dialog.dart';
import 'package:fe_12345/controller/message.dart';
import 'package:fe_12345/controller/settings.dart';
import 'package:fe_12345/controller/tool.dart';
import 'package:fe_12345/repository/grpc_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IdController extends GetxController {

  final token_ = "".obs;
  var isInited = false;

  final AuthConfig _config = AuthConfig(
    clientId: '70e2e19b31dc29c44ddb',
    serverUrl: 'https://id.12345.blue',
    organizationName: 'built-in',
    appName: 'agent',
    //redirectUri: 'http://localhost:9000/callback.html',
    redirectUri: 'https://12345.blue/callback.html',
    callbackUrlScheme: 'casdoor',
  );

  @override
  Future<void> onInit() async {
    if (isInited) {
      return;
    }
    super.onInit();
    Logger().d("ID init");
    await restoreToken();
    Logger().d("ID init ok");
    isInited = true;
  }

  Future<void> restoreToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('access_token');
    if (token != null) {
        token_.value = token;
        GrpcApi().resetToken(token);
    }
  }

  Future<void> login(BuildContext ctx) async {
    String callbackUri = _config.redirectUri;
    // Get platform information
    try {
      final platform = await CasdoorFlutterSdkPlatform().getPlatformVersion();
      if (platform != 'web') {
        callbackUri = '${_config.callbackUrlScheme}://callback';
      }
    } catch(e) {
      // 
    }
    _config.redirectUri = callbackUri;
    final Casdoor casdoor = Casdoor(config: _config);
    String result = '';
    try {
      if (true) {
        result = await casdoor.show();
      } else {
        if (!ctx.mounted) return;
        result = await casdoor.showFullscreen(ctx);
      }
    } catch (e, stackTrace) {
      Logger().e('Error: $e');
      Logger().e('StackTrace: $stackTrace');
      return;
    }
    // Get code
    final code = Uri.parse(result).queryParameters['code'] ?? '';
    final response = await casdoor.requestOauthAccessToken(code);
    final token = jsonDecode(response.body)['access_token'] as String;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('access_token', token);
    token_.value = token;

    GrpcApi().resetToken(token);

    Logger().d("token: $token");
    final decodedToken = casdoor.decodedToken(token_.value);
    casdoor.getUserInfo(token_.value);
    Logger().d("user: $decodedToken");

    final toolController = Get.find<ToolController>();
    await toolController.onLogin();
    final dialogController = Get.find<DialogController>();
    dialogController.onLogin();

    final SettingsController settingsController = Get.find<SettingsController>();
    settingsController.onLogin();
   }

  Future<void> logout() async {

    final Casdoor casdoor = Casdoor(config: _config);
    await casdoor.tokenLogout(token_.value, '', 'logout', clearCache: false);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('access_token', '');
    token_.value = '';

    final settingsController = Get.find<SettingsController>();
    settingsController.onLogout();
    final dialogController = Get.find<DialogController>();
    dialogController.onLogout();
    final messageController = Get.find<MessageController>();
    messageController.onLogout();
    final toolController = Get.find<ToolController>();
    toolController.onLogout();

  }

}