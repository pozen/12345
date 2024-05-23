import 'package:fe_12345/components/audio.dart';
import 'package:fe_12345/components/markdown.dart';
import 'package:fe_12345/controller/dialog.dart';
import 'package:fe_12345/controller/message.dart';
import 'package:fe_12345/controller/store.dart';
import 'package:fe_12345/controller/tool.dart';
import 'package:fe_12345/pb/pbentity/common.pb.dart' as pb;
import 'package:fe_12345/pb/pbentity/dialog.pb.dart' as pb;
import 'package:fe_12345/pb/pbentity/message.pb.dart' as pb;
import 'package:fixnum/fixnum.dart' as $fixnum;
//import 'package:fe_12345/repository/conversation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_picker/full_picker.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';

//var uuid = const Uuid();

class ChatWindow extends StatefulWidget {
  const ChatWindow({super.key});

  @override
  State<ChatWindow> createState() => _ChatWindowState();
}

class _ChatWindowState extends State<ChatWindow> {
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // 定义一个 GlobalKey
  final _scrollController = ScrollController();
  final _storeController = Get.find<StoreController>();

  @override
  Widget build(BuildContext context) {
    final ToolController toolController = Get.find();
    final MessageController controller = Get.find();
    final ImagePicker _picker = ImagePicker();
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
      child: Column(
        children: [
          Expanded(
            child: GetX<MessageController>(
              builder: (controller) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  _scrollToNewMessage();
                });
                if (controller.messageList.isNotEmpty) {
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    //shrinkWrap: true,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),

                    controller: _scrollController,
                    itemCount: controller.messageList.length,
                    itemBuilder: (context, index) {
                      return _buildMessageCard(
                          context, index, controller.messageList[index]);
                    },
                  );
                } else {
                  return const Text("");
                }
              },
            ),
          ),
          const SizedBox(height: 16),
          Form(
            key: _formKey,
            child: RawKeyboardListener(
              focusNode: FocusNode(),
              onKey: _handleKeyEvent,
              child: Row(
                children: [
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () async {
                        FullPicker(
                          context: context,
                          prefixName: 'test',
                          file: true,
                          voiceRecorder: true,
                          video: true,
                          videoCamera: true,
                          imageCamera: true,
                          imageCropper: true,
                          multiFile: true,
                          url: true,
                          onError: (final int value) {
                            Logger().e("onError $value");
                          },
                          onSelected: (final FullPickerOutput value) async {
                            String info = '';
                            if (value.fileType != FullPickerType.url) {
                              for (int i = 0; i < value.name.length; i++) {
                                info =
                                    'File Type :${value.fileType}\nPath File :${value.name[i]}\nSize File :${value.bytes[i]!.length}\n--------\n';
                              }
                            } else {
                              info = value.data as String;
                            }

                            String url = await _storeController.uploadFile(value.xFile.first!);
                            if (value.fileType == FullPickerType.image) {
                              _sendImageMessage(url);
                            } else if (value.fileType == FullPickerType.video) {
                              //_sendVideoMessage(info);
                              _sendMessage(url);
                            } else if (value.fileType == FullPickerType.voiceRecorder) {
                              _sendAudioMessage(url);
                              //_sendMessage(url);
                            } else if (value.fileType == FullPickerType.url) {
                              //_sendUrlMessage(info);
                              _sendMessage(url);
                            } else if (value.fileType == FullPickerType.file) {
                              //_sendFileMessage(info);
                              _sendMessage(url);
                            }
                            //_sendImageMessage(url);

                            Logger().d(info);

                            //setState(() {});
                            //Navigator.pop(context);

                          },
                        );
                     },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        padding: EdgeInsets.zero,
                      ),
                      child: const Icon(Icons.add),
                    ),
                  ),
                  const SizedBox(width: 7),
                  Expanded(
                    child: TextFormField(
                      style: const TextStyle(fontSize: 13),
                      controller: _controller,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        hintText: "inputTips".tr,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                      ),
                      autovalidateMode: AutovalidateMode.always,
                      maxLines: null,
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () async {
                        _sendMessage("");
                        Logger().d("onPressed out");
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        padding: EdgeInsets.zero,
                      ),
                      child: const Icon(Icons.send),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  pb.Dialog _newDialog(String name, String description) {
    var conversation = pb.Dialog(
      title: name,
      describe: description,
    );
    return conversation;
  }

  /// Sends a message to the chat.
  ///
  /// If the current dialog ID is empty, it creates a new conversation and sets
  /// the dialog ID. It then creates a new [pb.Message] object with the
  /// appropriate data and adds it to the message controller.
  ///
  /// No parameters.
  /// No return value.
  Future<void> _sendMessage(String text) async {
    // Get the message from the text field
    var message = _controller.text;
    if (text != "") {
      message = text;
    }

    // Get the message controller and dialog controller
    final MessageController messageController = Get.find();
    final DialogController dialogController = Get.find();

    // Check if the message is not empty
    if (message.isNotEmpty) {
      var sid = dialogController.currentDialogId.value;

      // Check if the current dialog ID is empty
      if (sid.isEmpty) {
        // Create a new conversation with the message and a limited length
        var conversation = _newDialog(
            message.substring(0, message.length > 12 ? 12 : message.length),
            message);

        // Add the conversation to the dialog controller and get the new ID
        conversation = await dialogController.addDialog(conversation);
        sid = conversation.id;

        // Set the current dialog ID
        dialogController.setCurrentDialogId(sid);
      }

      // Create a new message object with the appropriate data
      final newMessage = pb.Message(
        id: '',
        sid: sid,
        r: $fixnum.Int64(pb.Role.RoleUser.value),
        t: $fixnum.Int64(pb.MsgType.MsgTypeText.value),
        content: message,
      );

      // Add the message to the message controller
      messageController.addMessage(newMessage);

      // Reset the form
      _formKey.currentState!.reset();

      // Log the end of the function
      Logger().d("_sendMessage out");
    }
  }

  Future<void> _sendAudioMessage(String url) async {
    final MessageController messageController = Get.find();
    final DialogController dialogController = Get.find();
    if (url.isNotEmpty) {
      var sid = dialogController.currentDialogId.value;

      if (sid.isEmpty) {
        // new conversation
        var conversation = _newDialog("【audio】", url);
        conversation = await dialogController.addDialog(conversation);
        sid = conversation.id;
        dialogController.setCurrentDialogId(sid);
      }
      final newMessage = pb.Message(
        id: '',
        sid: sid,
        r: $fixnum.Int64(pb.Role.RoleUser.value),
        t: $fixnum.Int64(pb.MsgType.MsgTypeAudio.value),
        url: url,
      );
      messageController.addMessage(newMessage);
      //_formKey.currentState!.reset();
      Logger().d("_sendMessage image out");
    }
  }


  Future<void> _sendImageMessage(String url) async {
    final MessageController messageController = Get.find();
    final DialogController dialogController = Get.find();
    if (url.isNotEmpty) {
      var sid = dialogController.currentDialogId.value;

      if (sid.isEmpty) {
        // new conversation
        var conversation = _newDialog("【image】", url);
        conversation = await dialogController.addDialog(conversation);
        sid = conversation.id;
        dialogController.setCurrentDialogId(sid);
      }
      final newMessage = pb.Message(
        id: '',
        sid: sid,
        r: $fixnum.Int64(pb.Role.RoleUser.value),
        t: $fixnum.Int64(pb.MsgType.MsgTypeImage.value),
        url: url,
      );
      messageController.addMessage(newMessage);
      //_formKey.currentState!.reset();
      Logger().d("_sendMessage image out");
    }
  }

  Widget _buildMessageCard(
      BuildContext context, int index, pb.Message message) {
    if (message.r.toInt() == pb.Role.RoleUser.value) {
      return GetX<MessageController>(
          builder: (controller) => Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.person,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("User".tr,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary)),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Card(
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: _makeMsgContentWidget(
                                    controller.messageList[index])),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ));
    } else {
      return GetX<MessageController>(
          builder: (controller) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      /*const SizedBox(
                width: 10,
              ),*/
                      FaIcon(FontAwesomeIcons.robot,
                          color: Theme.of(context).colorScheme.primary),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                          message.r.toInt() == pb.Role.RoleSystem.value
                              ? "system".tr
                              : "assistant".tr,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Card(
                                margin: const EdgeInsets.all(8),
                                child: controller
                                        .messageList[index].content.isEmpty
                                    ? const SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: CircularProgressIndicator(),
                                      )
                                    : _makeMsgContentWidget(
                                        controller.messageList[index]))),
                      ),
                    ],
                  ),
                ],
              ));
    }
  }

  Widget _makeMsgContentWidget(pb.Message msg) {
    if (msg.t == pb.MsgType.MsgTypeImage.value) {
      return Image.network(msg.url);
    } else if(msg.t == pb.MsgType.MsgTypeAudio.value) {
      return Audio(url: msg.url);
    } else {
      return Markdown(text: msg.content);
    }
  }

  Future<void> _handleKeyEvent(RawKeyEvent value) async {
    if ((value.isKeyPressed(LogicalKeyboardKey.enter) &&
            value.isControlPressed) ||
        (value.isKeyPressed(LogicalKeyboardKey.enter) && value.isMetaPressed)) {
      _sendMessage("");
    }
  }

  void _scrollToNewMessage() {
    if (_scrollController.hasClients) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    }
  }
}
