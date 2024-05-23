import 'package:fe_12345/pages/root_nav.dart';
import 'package:fe_12345/pages/root_pageview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:velocity_x/velocity_x.dart';

class MyHomePage extends GetResponsiveView {
  @override
  Widget? phone() {
    //NavController controller = Get.find();
    return Scaffold(
        /*appBar: AppBar(
          title: Text('appTitle'.tr),
        ),*/
        //drawer: const ConversationWindow(),
        body: RootViewPagePhone(),
        bottomNavigationBar: MainNavPhone());
  }

  @override
  Widget? desktop() {
    //NavController controller = Get.find();
    return Scaffold(
      /*appBar: AppBar(
        title: Text('appTitle'.tr),
      ),*/
      backgroundColor: Theme.of(screen.context).colorScheme.background,
      body: Row(
          //mainAxisSize: MainAxisSize.max,
          children: [
            MainNav(),
            Expanded(child: RootViewPage()),
          ]),
    );
  }

  @override
  Widget? builder() {
    return super.builder();
  }
}
