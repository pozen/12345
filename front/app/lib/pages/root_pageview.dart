import 'package:fe_12345/components/chat.dart';
import 'package:fe_12345/components/conversation.dart';
import 'package:fe_12345/components/tool_list.dart';
import 'package:fe_12345/controller/nav.dart';
import 'package:fe_12345/pages/account.dart';
import 'package:fe_12345/pages/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootViewPage extends StatefulWidget {
  RootViewPage({Key? key}) : super(key: key);

  @override
  _RootViewPageState createState() => _RootViewPageState();
}

List<Widget> toolViewTitleList(BuildContext context) {
  var style = Theme.of(context).textTheme;
  return [
    Row(
      children: [Icon(Icons.lock), Text('vars'.tr, style: style.bodyMedium)],
    ),
    Text('bots'.tr, style: style.bodyMedium),
    Text('models'.tr, style: style.bodyMedium),
    Text('plugins'.tr, style: style.bodyMedium),
  ];
}

List<Widget> toolViewPageList() {
  return [
    ToolListWindow(
      toolType: "vars",
      listType: "",
    ),
    ToolListWindow(
      toolType: "bot",
      listType: "",
    ),
    ToolListWindow(toolType: "model", listType: ""),
    ToolListWindow(
      toolType: "plugin",
      listType: "",
    ),
  ];
}

List<Widget> toolViewTitleListGround(BuildContext context) {
  var style = Theme.of(context).textTheme;
  return [
    Text('bots'.tr, style: style.bodyMedium),
    Text('models'.tr, style: style.bodyMedium),
    Text('plugins'.tr, style: style.bodyMedium),
  ];
}

List<Widget> toolViewPageListGround() {
  return [
    ToolListWindow(
      toolType: "ground:bot",
      listType: "ground",
    ),
    ToolListWindow(toolType: "ground:model", listType: "ground"),
    ToolListWindow(toolType: "ground:plugin", listType: "ground"),
  ];
}

List<Widget> profileViewTitleList(BuildContext context) {
  var style = Theme.of(context).textTheme;
  return [
    Text('account'.tr, style: style.bodyMedium),
    Text('settings'.tr, style: style.bodyMedium),
    Text('help'.tr, style: style.bodyMedium),
  ];
}

List<Widget> profileViewPageList() {
  return [
    AccountPage(),
    SettingPage(),
    Text('Help'),
  ];
}

class _RootViewPageState extends State<RootViewPage> {
  List<Widget> children = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    NavController controller = Get.find();

    children = [
      Row(
        children: [ConversationWindow(), Expanded(child: ChatWindow())],
      ),
      //ChatWindow(),
      DefaultTabController(
        length: toolViewTitleList(context).length,
        child: Scaffold(
          appBar: AppBar(
            //backgroundColor: Colors.blue,
            title: TabBar(
              tabs: toolViewTitleList(context),
              isScrollable: true,
              //indicatorColor: Colors.red,
              //labelColor: Colors.white,
            ),
          ),
          body: TabBarView(children: toolViewPageList()),
        ),
      ),
      DefaultTabController(
          length: toolViewTitleListGround(context).length,
          child: Scaffold(
            appBar: AppBar(
              //backgroundColor: Colors.blue,
              title: TabBar(
                tabs: toolViewTitleListGround(context),
                isScrollable: true,
                //indicatorColor: Colors.red,
                //labelColor: Colors.white,
              ),
            ),
            body: TabBarView(children: toolViewPageListGround()),
          )),

      DefaultTabController(
          length: profileViewPageList().length,
          child: Scaffold(
            appBar: AppBar(
              //backgroundColor: Colors.blue,
              title: TabBar(
                tabs: profileViewTitleList(context),
                isScrollable: true,
                //indicatorColor: Colors.red,
                //labelColor: Colors.white,
              ),
            ),
            body: TabBarView(children: profileViewPageList()),
          )),

      //ToolListWindow(toolType: "model"),
      //SettingPage(),
    ];

    return Scaffold(
      body: PageView(
        controller: controller.rootPageCtr,
        children: children,
        onPageChanged: (value) {
          controller.selectedIndex.value = value;
          setState(() {});
        },
      ),
    );
  }
}

class RootViewPagePhone extends StatefulWidget {
  RootViewPagePhone({Key? key}) : super(key: key);

  @override
  _RootViewPageStatePhone createState() => _RootViewPageStatePhone();
}

class _RootViewPageStatePhone extends State<RootViewPagePhone> {
  late List<Widget> children;

  late List<Widget> titleList;
  late List<Widget> pageList;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    NavController controller = Get.find();
    return Scaffold(
      body: PageView(
        controller: controller.rootPageCtr,
        children: [
          Scaffold(
            appBar: AppBar(title: const Text('')),
            body: const ChatWindow(),
            drawer: ConversationWindow(),
          ),
          //ConversationWindow(),
          //ChatWindow(),
          DefaultTabController(
              length: toolViewPageList().length,
              child: Scaffold(
                appBar: AppBar(
                    //backgroundColor: Colors.blue,
                    title: Expanded(
                  child: TabBar(
                    tabs: toolViewTitleList(context),
                    isScrollable: true,

                    //indicatorColor: Colors.red,
                    //labelColor: Colors.white,
                  ),
                )),
                body: TabBarView(children: toolViewPageList()),
              )),
          DefaultTabController(
              length: toolViewTitleListGround(context).length,
              child: Scaffold(
                appBar: AppBar(
                  //backgroundColor: Colors.blue,
                  title: TabBar(
                    tabs: toolViewTitleListGround(context),
                    isScrollable: true,
                    //indicatorColor: Colors.red,
                    //labelColor: Colors.white,
                  ),
                ),
                body: TabBarView(children: toolViewPageListGround()),
              )),
          DefaultTabController(
              length: profileViewPageList().length,
              child: Scaffold(
                appBar: AppBar(
                  //backgroundColor: Colors.blue,
                  title: TabBar(
                    tabs: profileViewTitleList(context),
                    isScrollable: true,
                    //indicatorColor: Colors.red,
                    //labelColor: Colors.white,
                  ),
                ),
                body: TabBarView(children: profileViewPageList()),
              )),
          //SettingPage(),
        ],
        onPageChanged: (value) {
          controller.selectedIndex.value = value;
          setState(() {});
        },
      ),
    );
  }
}
