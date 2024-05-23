import 'package:fe_12345/controller/account.dart';
import 'package:fe_12345/controller/id.dart';
import 'package:fe_12345/controller/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPage extends GetResponsiveView<SettingsController> {
  AccountPage({super.key});

  final _idController = Get.find<IdController>();
  final _accountController = Get.find<AccountController>();

  var screenPickerColor = Colors.blue; // Material blue.
  final dialogPickerColor = Colors.red; // Material red.
  final dialogSelectColor = const Color(0xFFA239CA); // A purple color.

  @override
  Widget? builder() {
    return Scaffold(
      body: GetX<AccountController>(
          init: _accountController,
          builder: (controller) {
            return Column(children: [
              Container(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: GetX<IdController>(
                      init: _idController,
                      builder: (controller) {
                        return controller.token_.value != ''
                            ? TextButton(
                                onPressed: () {
                                  controller.logout();
                                },
                                style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(20),
                                  ),
                                ),
                                child: const SizedBox(
                                    height: 50,
                                    child: Column(
                                      children: [
                                        Icon(Icons.logout),
                                        Text('Logout')
                                      ],
                                    )))
                            : TextButton(
                                onPressed: () {
                                  controller.login(Get.context!);
                                },
                                style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(20),
                                  ),
                                ),
                                child: const SizedBox(
                                    height: 50,
                                    child: Column(
                                      children: [
                                        Icon(Icons.login),
                                        Text('Login')
                                      ],
                                    )));
                      },
                    ),
                  ),
                ),
              ),
              Divider(),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Text('Balance : ' +
                              controller.balance.value.toString(),
                              style: TextStyle(color: Theme.of(screen.context).colorScheme.primary)
                          )
                        ],
                      ))),
            ]);
          }),
    );
  }
}
