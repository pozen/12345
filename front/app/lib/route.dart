//import 'package:fe_12345/pages/home.dart';
import 'package:fe_12345/pages/root.dart';
import 'package:fe_12345/pages/setting.dart';
import 'package:get/get.dart';

final routes = [
  //GetPage(name: '/', page: () => home()),
  GetPage(name: '/', page: () => MyHomePage()),
  GetPage(name: '/setting', page: () => SettingPage())
];
