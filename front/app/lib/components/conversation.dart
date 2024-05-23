import 'package:fe_12345/controller/dialog.dart';
import 'package:fe_12345/controller/message.dart';
import 'package:fe_12345/controller/settings.dart';
import 'package:fe_12345/controller/tool.dart';
import 'package:fe_12345/pb/pbentity/dialog.pb.dart' as pb;
import 'package:fe_12345/pb/pbentity/tool.pb.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class ConversationWindow extends StatelessWidget {
  ConversationWindow({super.key});

  final ToolController toolController = Get.find();
  final DialogController dialogController = Get.find();
  final SettingsController settingsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          border: const Border(right: BorderSide(width: .1))),
      constraints: const BoxConstraints(maxWidth: 300),
      child: GetX<DialogController>(
          init: dialogController,
          builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButtonFormField(
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                  value: settingsController.selectedBot.value,
                  decoration: InputDecoration(
                    hintText: 'select bot',
                    labelStyle: TextStyle(
                      //fontWeight: FontWeight.bold,
                      backgroundColor:
                          Theme.of(Get.context!).colorScheme.secondary,
                      color: Theme.of(Get.context!).colorScheme.primary,
                      //fontSize: 4,
                    ),

                    // filled: true,
                    icon: const FaIcon(FontAwesomeIcons.robot),
                    iconColor: Theme.of(Get.context!).colorScheme.primary,
                  ),
                  items: toolController
                      .getBotList()
                      .map<DropdownMenuItem<String>>((Tool t) {
                    return DropdownMenuItem<String>(
                      value: t.id,
                      child: Text(
                        t.name,
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            backgroundColor:
                                Theme.of(Get.context!).colorScheme.background,
                            color: Theme.of(Get.context!).colorScheme.primary),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    if (newValue == null) return;
                    Logger().d("onChanged: $newValue");
                    settingsController.setSelectedBot(newValue);
                  },
                ),

                Container(
                    height: 25,
                    child: Transform.scale(
                        alignment: Alignment.center,
                        scale: 0.6,
                        origin: const Offset(0, -20),
                        child: SwitchListTile(
                            title: Text(
                              "useStreamApi".tr,
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                backgroundColor: Theme.of(Get.context!)
                                    .colorScheme
                                    .background,
                                color:
                                    Theme.of(Get.context!).colorScheme.primary,
                                fontSize: 20,
                              ),
                            ),
                            value: settingsController.useStream.value,
                            onChanged: (value) {
                              settingsController.setUseStream(value);
                            }))),

                const Divider(),
                // const SizedBox(height: 16,),

                controller.dialogList.isEmpty
                    ? Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'noConversationTips'.tr,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: ListView.builder(
                          itemCount: controller.dialogList.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                _tapConversation(index);
                              },
                              selected: controller.currentDialogId.value ==
                                  controller.dialogList[index].id,
                              leading: Icon(
                                Icons.chat,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              title: Text(
                                controller.dialogList[index].title,
                                style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.primary),
                              ),
                              trailing: Builder(builder: (context) {
                                return IconButton(
                                    onPressed: () {
                                      //显示一个overlay操作
                                      _showConversationDetail(context, index);
                                    },
                                    icon: Icon(
                                      Icons.more_horiz,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ));
                              }),
                            );
                          },
                        ),
                      ),
                const Divider(thickness: .5),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          onTapNewConversation();
                          closeDrawer();
                        },
                        label: Text('newConversation'.tr),
                        icon: const Icon(Icons.add_box),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }

  void _showConversationDetail(BuildContext context, int index) {
    final DialogController controller = Get.find();
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(Offset.zero, ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero),
            ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );
    showMenu(
      context: context,
      position: position,
      items: [
        PopupMenuItem(
          value: "delete",
          child: Text('delete'.tr),
        ),
        PopupMenuItem(
          value: "rename",
          child: Text('reName'.tr),
        ),
      ],
    ).then((value) {
      if (value == "delete") {
        controller.deleteDialog(index);
      } else if (value == "rename") {
        _renameConversation(context, index);
      }
    });
  }

  void onTapNewConversation() {
    MessageController messageController = Get.find();
    messageController.clearMessages();
    DialogController controller = Get.find();
    controller.setCurrentDialogId("");
  }

  void _renameConversation(BuildContext context, int index) {
    final DialogController dialogController = Get.find();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController controller = TextEditingController();
        controller.text = dialogController.dialogList[index].title;
        return AlertDialog(
          title: Text("renameConversation".tr),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  labelText: 'enterNewName'.tr,
                  hintText: 'enterNewName'.tr,
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                ),
                autovalidateMode: AutovalidateMode.always,
                maxLines: null,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("cancel".tr),
            ),
            TextButton(
              onPressed: () {
                dialogController.renameDialog(pb.Dialog(
                  title: controller.text,
                  describe: "",
                  id: dialogController.dialogList[index].id,
                ));
                Navigator.of(context).pop();
              },
              child: Text("ok".tr),
            ),
          ],
        );
      },
    );
  }

  _tapConversation(int index) {
    DialogController controller = Get.find();
    closeDrawer();
    String sid = controller.dialogList[index].id;
    controller.currentDialogId(sid);
    MessageController controllerMessage = Get.find();
    controllerMessage.loadAllMessages(sid);
  }

  void closeDrawer() {
    if (GetPlatform.isMobile) {
      Get.back();
    }
  }
}
