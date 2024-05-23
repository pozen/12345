import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavController extends GetxController {
  PageController rootPageCtr = PageController();

  final selectedIndex = 0.obs;

  @override
  void onInit() async {
    super.onInit();
    //rootPage = const Text('inited');
  }

  void setRootPage(Widget page) {
  }
}
