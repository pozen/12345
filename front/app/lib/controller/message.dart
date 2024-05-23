import 'dart:async';

import 'package:fe_12345/controller/dialog.dart';
import 'package:fe_12345/controller/settings.dart';
import 'package:fe_12345/pb/grpc/v1/api.pb.dart';
import 'package:fe_12345/pb/pbentity/common.pb.dart';
//import 'package:fe_12345/pb/pbentity/dialog.pb.dart';
import 'package:fe_12345/pb/pbentity/message.pb.dart';
import 'package:fe_12345/repository/grpc_api.dart';
//import 'package:fe_12345/repository/conversation.dart';
import 'package:fe_12345/repository/message.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class MessageController extends GetxController {
  final messageList = <Message>[].obs;

  //var messageListTmp = <Message>[].obs;
  //var messagesRaw;

  void loadAllMessages(String sid) async {
    var rsp = await GrpcApi().c().getDialogMsgList(
        GetDialogMsgListRequest(sId: sid, page: 1, pageSize: 30));
    if (rsp.eC.code == 0) {
      //messagesRaw = rsp.messages;
      messageList.value = rsp.msgs;

      Logger().d(rsp.msgs);
    }
  }

  void onLogout() {
    messageList.clear();
    update();
  }

  void clearMessages() {
    messageList.clear();
    update();
  }

  Future<void> updateLastMessage(Message message) async {
    Logger().d("updateLastMessage ${message}");
    //messageList.value = [...messagesRaw, message];

    if (messageList.last.id == message.id) {
      messageList.removeLast();
    }

    messageList.add(message);

    //Logger().d("updateLastMessage ${messageList.value}");
    messageList.refresh();
    Logger().d("update()");
    //refresh();
    update();
  }

  Future<void> addMessage(Message message) async {
    Logger().d("addMessage ${message.content}");
    var rsp =
        await GrpcApi().c().addDialogMsg(AddDialogMsgRequest(msg: message));
    if (rsp.eC.code != 0) {
      Logger().e("addMessage error ${rsp.eC.msg}");
      return;
    }
    message = rsp.msg;

    //await Future.delayed(Duration(seconds: 1));
    messageList.add(message);
    // wait for all the  state emit
    //final completer = Completer();
    try {
      var func = MessageRepository().getResponse;

      final DialogController dialogController = Get.find();

      if (dialogController.useStream.value) {
        func = MessageRepository().getResponseStream;
      }

      var settingsController = Get.find<SettingsController>();

      func(settingsController.selectedBot.value, messageList,
          (Message msg) async {
        updateLastMessage(msg);
      }, (Message msg) async {
        updateLastMessage(msg);
      }, (Message msg) async {
        // if streaming is done ,load all the message
        var rsp =
            await GrpcApi().c().addDialogMsg(AddDialogMsgRequest(msg: msg));
        if (rsp.eC.code != 0) {
          Logger().e("addMessage error ${rsp.eC.msg}");
          messageList.add(Message(
              id: '',
              content: rsp.eC.msg,
              r: $fixnum.Int64(Role.RoleAssistant.value)));
          return;
        }
        //messageList.add(msg);
        if (!dialogController.useStream.value) updateLastMessage(rsp.msg);
        //completer.complete();
      });
    } catch (e) {
      messageList.add(Message(
          id: '',
          sid: message.sid,
          content: e.toString(),
          r: $fixnum.Int64(Role.RoleAssistant.value)));
      //completer.complete();
    }
    //await completer.future;

    Logger().d("AddMessage out !!!");
  }
}
