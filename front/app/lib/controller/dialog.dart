import 'package:fe_12345/pb/grpc/v1/api.pb.dart';
import 'package:fe_12345/pb/pbentity/dialog.pb.dart';
import 'package:fe_12345/repository/grpc_api.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class DialogController extends GetxController {
  final dialogList = <Dialog>[].obs;

  final currentDialogId = "".obs;
  final useStream = false.obs;
  
  var isInited = false;

  static DialogController get to => Get.find();
  @override
  Future<void> onInit() async {
    if (isInited) {
      return;
    }
    super.onInit();
    var rsp = await GrpcApi().c().getDialogList(GetDialogListRequest(page: 1, pageSize: 50));
    /*rsp.then((value) {
      dialogList.value = value.dialogs; 
      Logger().d("dialogList ret : ${value}");
    });*/
    dialogList.value = rsp.dialogs;
    isInited = true;
    Logger().d("dialogList ret : ${rsp}");
  }

  void onLogout() {
    dialogList.clear();
    currentDialogId.value = "";
    update();
  }

  void onLogin() async {
    var rsp = await GrpcApi().c().getDialogList(GetDialogListRequest(uId: "12345", oId: "", page: 1, pageSize: 30));
    Logger().d("login dialogList ret : ${rsp}");
    dialogList.value = rsp.dialogs; 
  }

  void setCurrentDialogId(String id) async {
    currentDialogId.value = id;
    update();
  }

  void deleteDialog(int index) async {
    Dialog dialog = dialogList[index];
    var rsp = await GrpcApi().c().delDialog(DelDialogRequest(sId: dialog.id));
    if (rsp.eC.code == 0) {
      dialogList.removeAt(index);
    }
    update();
  }

  // todo
  void renameDialog(Dialog dialog) async {
    var rsp = await GrpcApi().c().createDialog(AddDialogRequest(id: dialog.id, title: dialog.title));
    if (rsp.eC.code == 0) {
      dialogList.removeWhere((element) => element.id == dialog.id);
      dialogList.insert(0, rsp.dialog);
    }
    update();
  }

  Future<Dialog> addDialog(Dialog dialog) async {
    var rsp = await GrpcApi().c().createDialog(AddDialogRequest(id: dialog.id, title: dialog.title));
    if (rsp.eC.code == 0) {
      //dialogList.add(rsp.dialog);
      dialogList.insert(0, rsp.dialog);
    }
    update();
    return rsp.dialog;
  }
}
