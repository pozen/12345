import 'package:get/get.dart';

class AccountController extends GetxController {
  final balance = 0.obs;

  @override
  void onInit() async {
    var ok = await onLogin();
    if (!ok) {
    }
    super.onInit();
  }

  void onLogout() {
    balance.value = 0;
  }

  Future<bool> onLogin() async {
   return true;
  }

}
