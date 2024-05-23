import 'dart:async';

import 'package:fe_12345/components/tool_edit.dart';
import 'package:fe_12345/controller/tool.dart';
import 'package:fe_12345/pb/pbentity/tool.pb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class ToolListWindow extends StatefulWidget {
  const ToolListWindow(
      {super.key, required this.toolType, required this.listType});

  final String toolType;
  final String listType;

  @override
  State<ToolListWindow> createState() => _ToolListWindowState();
}

class _ToolListWindowState extends State<ToolListWindow> {
  final ToolController _controller = Get.find();
  final _formKey = GlobalKey<FormState>();
  final _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    _controller.curToolType.value = widget.toolType;
    _controller.makeCurToolListByType(widget.toolType);
    Logger().d("init state: makeCurToolListByType");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetX<ToolController>(
        init: _controller,
        builder: (controller) {
          //controller.makeCurToolListByType(widget.toolType);
          return Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: Column(children: [
                    widget.listType == "ground" ? const SizedBox(width: 0,height: 0,) : IconButton(
                        icon: Icon(Icons.add, color: Theme.of(context).colorScheme.primary),
                        onPressed: () {
                          setState(() {});
                          //Get.defaultDialog(content: ToolEditWindow(), radius: 50);
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ToolEditWindow(
                                            toolType: widget.toolType,
                                            readOnly: false,
                                          ),
                                      fullscreenDialog: false))
                              .then(callback);
                        }),
                    Expanded(
                        child: controller.curToolList.isNotEmpty
                            ? ListView.builder(
                                key: _formKey,
                                scrollDirection: Axis.vertical,
                                //shrinkWrap: true,
                                shrinkWrap: true,
                                physics: ScrollPhysics(),

                                controller: _scrollController,
                                itemCount: controller.curToolList.length,
                                itemBuilder: (ctx, index) {
                                  return _buildMessageCard(index, context);
                                },
                              )
                            : Text("")),
                  ])));

          //const SizedBox(height: 16),
        });
  }

  FutureOr callback(dynamic value) {
    Logger().d("tool list callback");
    // _controller.makeCurToolListByType(widget.toolType);

    // setState(() {});
  }

  Widget _buildMessageCard(int index, BuildContext ctx) {
    return GetX<ToolController>(
        init: _controller,
        builder: (controller) {
          Tool t = controller.curToolList[index];
          return Card(
              margin: const EdgeInsets.all(10),
              color: Theme.of(ctx).colorScheme.background,
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.grey),
                title: SelectableText(t.name, style: Theme.of(ctx).textTheme.bodyMedium),
                subtitle: SelectableText(t.des, style: Theme.of(ctx).textTheme.bodyMedium),
                trailing: Container(
                    width: 150,
                    child: widget.listType == "ground"
                        ? Row(children: [
                            IconButton(
                                icon: Icon(Icons.star),
                                color: Colors.grey,
                                onPressed: () {
                                  setState(() {
                                  });
                                }),

                            IconButton(
                                icon: const Icon(Icons.read_more),
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ToolEditWindow(
                                                        toolType:
                                                            widget.toolType,
                                                            readOnly: true,
                                                        tool: t),
                                                fullscreenDialog: false))
                                        .then(callback);
                                  });
                                }),

                          ])
                        : Row(children: [
                            IconButton(
                                icon: const Icon(Icons.share),
                                color: t.shared.isNotEmpty
                                    ? Colors.green
                                    : Colors.grey,
                                tooltip: t.shared.isNotEmpty
                                    ? 'Not Shared'
                                    : 'Shared',
                                onPressed: () {
                                  setState(() {
                                    if (t.shared.isNotEmpty) {
                                      _controller.UnShare(t);
                                    } else {
                                      _controller.Share(t);
                                    }
                                  });
                                }),

                            IconButton(
                                icon: Icon(Icons.edit),
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ToolEditWindow(
                                                        toolType:
                                                            widget.toolType,
                                                            readOnly: false,
                                                        tool: t),
                                                fullscreenDialog: false))
                                        .then(callback);
                                  });
                                }),
                            //SizedBox(width: 8),
                            IconButton(
                                icon: Icon(Icons.delete),
                                onPressed: () {
                                  setState(() {
                                    controller.remove(t);
                                    _formKey.currentState!.reset();
                                  });
                                })
                          ])),
              ));
        });
  }

  void _scrollToNewMessage() {
    if (_scrollController.hasClients) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    }
  }
}
