import 'dart:async';

import 'package:fe_12345/pb/grpc/v1/api.pb.dart';
import 'package:fe_12345/pb/pbentity/tool.pb.dart';
import 'package:fe_12345/repository/grpc_api.dart' as api;
import 'package:get/get.dart';
//import 'package:grpc/service_api.dart' as $grpc;
import 'package:logger/logger.dart';

class ToolMgr {
  static final ToolMgr _instance = ToolMgr._internal();
  factory ToolMgr() {
    return _instance;
  }
  ToolMgr._internal() {
    init();
  }
  void init() {
  }

  final Map<String, List<Tool>> toolLists = {};

  Future<void> refreshToolList(String type) async {
    String typ = type;
    String from = "";
    if (type.contains(':')) {
      List<String> l = type.split(':');
      from = l[0];
      typ = l[1];
    }
    Logger().d("refreshToolList type: $typ from: $from");
    var res = await api.GrpcApi().c().getToolList(GetToolListRequest(type: typ, from: from,));
    if (res.eC.code != 0) {
      Logger().e("refreshToolList error: ${res.eC.msg}");
      return;
    }
    toolLists[type] = res.tools;
    Logger().d("tool init ok: {$res.tools}");
  }

   Future<List<Tool>> getToolList(String type) async {
    if (!toolLists.containsKey(type)) {
       await refreshToolList(type);
    }

    if (!toolLists.containsKey(type)) {
      return [];
    }

    return toolLists[type]!.map((item)=>item).toList();
    //return Future.value(toolLists[type]!.map((item)=>item).toList());
   }

   List<Tool> getToolListSync(String type) {
    if (!toolLists.containsKey(type)) {
      refreshToolList(type);
    }

    if (!toolLists.containsKey(type)) {
      return [];
    }

    return toolLists[type]!.map((item)=>item).toList();
  }

  Future<Tool> update(Tool tool) async {
    var t = await api.GrpcApi().c().createTool(CreateToolRequest(tool: tool,));
    if (t.eC.code != 0) {
      Logger().e("update tool error: ${t.eC.msg}");
      return tool;
    }
    Logger().d("update tool ok: ${t.tool.id} ");
    for (var i = 0; i < toolLists[tool.type]!.length; i++) {
      if (toolLists[tool.type]![i].id == tool.id) {
        toolLists[tool.type]![i] = t.tool;
      }
    }
    return t.tool;
  }

  Future<Tool> add(Tool tool) async {
    var t = await api.GrpcApi().c().createTool(CreateToolRequest(tool: tool,));
    if (t.eC.code != 0) {
      Logger().e("add tool error: ${t.eC.msg}");
      return tool;
    }
    Logger().d("add tool ok: ${t.tool.id} ");
    toolLists[tool.type]?.add(t.tool);
    return t.tool;
  }

  Future<bool> remove(Tool tool) async {
    var res = await api.GrpcApi().c().delTools(DelToolsRequest(ids: [tool.id]));
    if (res.eC.code != 0) {
      Logger().e("remove tool error: ${res.eC.msg}");
      return false;
    }
    toolLists[tool.type]?.removeWhere((element) => element.id == tool.id);
    return true;
  }

  Tool getToolById(String id) {
    return toolLists.values
        .expand((element) => element)
        .firstWhere((element) => element.id == id) ?? Tool();
  }


  void clear() {
    toolLists.clear();
  }
}

class ToolController extends GetxController {

  final curToolList = <Tool>[].obs;
  final curToolType = "".obs;
  var isInited = false;

  @override
  Future<void> onInit() async {
    if (isInited) {
      return;
    }
    super.onInit();

    await ToolMgr().refreshToolList("bot");
    await ToolMgr().refreshToolList("ground:bot");
    isInited = true;
  }

  void onLogout() {
    ToolMgr().clear();
    curToolList.clear();
    update();
  }

  String getCurType() {
    if (curToolType.value == "") {
      return "bot";
    }
    return curToolType.value;
  }

  Future<void> onLogin() async {
    await ToolMgr().refreshToolList("bot");
    await ToolMgr().refreshToolList("ground:bot");
    await ToolMgr().refreshToolList(getCurType());
    if (curToolType.value != "") {
      makeCurToolListByType(curToolType.value);
    }
  }
  Future<int> add(Tool tool) async {
    if (tool.id != "") {
      update_(tool);
      return 0;
    }
    Tool t = await ToolMgr().add(tool);
    curToolList.add(t);
    update();
    return 0;
  }

  void remove(Tool tool) async {
    bool ok = await ToolMgr().remove(tool);
    if (ok) {
      curToolList.remove(tool);
      update();
    }
  }

  void Share(Tool tool) async {
    tool.shared.removeWhere((element) => element == "/",);
    tool.shared.add("/",);
    update_(tool);
  }

void UnShare(Tool tool) async {
    tool.shared.clear();
    update_(tool);
  }

  void update_(Tool tool) async {
    Tool t = await ToolMgr().update(tool);
    makeCurToolListByType(t.type);
    update();
  }

  Tool? getToolById(String id) {
    return ToolMgr().getToolById(id);
  }

  Future<void> makeCurToolListByType(String type) async {
    curToolType.value = type;
    curToolList.value = await ToolMgr().getToolList(type);
    Logger().d("makeCurToolListByType");
  }

  List<Tool> getToolList(String type) {
    var list = ToolMgr().getToolListSync(type);
    Logger().d("getToolList");
    list.add(Tool(name: '无', id: ''));
    return list;
  }

  List<Tool> getBotList() {
    var list = ToolMgr().getToolListSync("bot");
    Logger().d("get bot list");

    var list2 = ToolMgr().getToolListSync("ground:bot");

    List<Tool> list3 = [];
    // merge list & list2
    for (var i = 0; i < list.length; i++) {
      if (list3.any((element) => element.id == list[i].id)) {
        continue; 
      }
      list3.add(list[i]);
    }
    for (var i = 0; i < list2.length; i++) {
      if (list3.any((element) => element.id == list2[i].id)) {
        continue;
      }
      list3.add(list2[i]);
    }
    list3.add(Tool(name: '无', id: ''));
    return list3;
  }
}
