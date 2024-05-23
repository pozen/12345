import 'package:code_text_field/code_text_field.dart';
import 'package:fe_12345/controller/tool.dart';
import 'package:fe_12345/pb/pbentity/tool.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:get/get.dart';
import 'package:highlight/languages/javascript.dart';

class ToolEditWindow extends StatefulWidget {
  ToolEditWindow(
      {super.key, required this.toolType, required this.readOnly, this.tool});

  Tool? tool;
  String toolType;
  bool readOnly;

  @override
  State<ToolEditWindow> createState() => _ToolEditWindowState();

  void refresh() {}
}

class _ToolEditWindowState extends State<ToolEditWindow> {
  final ToolController _controller = Get.find();
  final _scrollController = ScrollController();
  final _formKey = GlobalKey<FormState>();

  CodeController? _codeController;
  @override
  void initState() {
    if (widget.tool == null) {
      widget.tool = Tool();
    }

    _codeController = CodeController(
      text: widget.tool!.code,
      language: javascript,
    );
    super.initState();
  }

  @override
  void dispose() {
    _codeController?.dispose();
    super.dispose();
  }

  void _forSubmitted() async {
    var _form = _formKey.currentState;

    if (_form!.validate()) {
      _form.save();
    }
    widget.tool?.type = widget.toolType;
    await _controller.add(widget.tool!);
    Navigator.pop(context);
    //widget.callback();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.only(left: 28, right: 28, bottom: 20, top: 10),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                child: NavigationToolbar(
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                height: 30,
              ),
              widget.tool?.id == ""
                  ? const SizedBox(
                      width: 0,
                      height: 0,
                    )
                  : TextFormField(
                      decoration: const InputDecoration(labelText: "Id"),
                      initialValue: widget.tool?.id ?? '',
                      readOnly: true,
                    ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: "Name", hintText: '请输入名字'),
                initialValue: widget.tool?.name ?? '',
                readOnly: widget.readOnly,
                onSaved: (v) {
                  widget.tool?.name = v ?? '';
                },
              ),
              TextFormField(
                decoration:
                    InputDecoration(labelText: "Description", hintText: '输入描述'),
                initialValue: widget.tool?.des ?? '',
                readOnly: widget.readOnly,
                onSaved: (v) {
                  widget.tool?.des = v ?? '';
                },
              ),
              Text(""),
              CodeTheme(
                data: const CodeThemeData(styles: monokaiSublimeTheme),
                child: CodeField(
                  controller: _codeController!,
                  /*controller: CodeController(
                    text: widget.tool!.code,
                    language: javascript,
                  ),*/
                  maxLines: 15,
                  wrap: true,
                  readOnly: widget.readOnly,
                  textStyle: const TextStyle(fontFamily: 'SourceCode'),
                  onChanged: (val) {
                    widget.tool?.code = val;
                  },
                ),
              ),

              widget.readOnly ? const SizedBox(width: 0, height: 0,) :
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(children: <Widget>[
                  Expanded(
                      child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Colors.blue),
                      padding: MaterialStateProperty.all(EdgeInsets.all(15.0)),
                    ),
                    child: Text('提交'),
                    onPressed: this._forSubmitted,
                  ))
                ]),
              )
            ],
          ),
        ));
  }
}
