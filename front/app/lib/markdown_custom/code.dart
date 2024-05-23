import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';

SpanNodeGeneratorWithTag codeBlockGenerator = SpanNodeGeneratorWithTag(
    tag: MarkdownTag.pre.name,
    generator: (e, config, visitor) =>
        CustomCodeBlockNode(e.textContent, config.pre));

class CustomCodeBlockNode extends ElementNode {
  CustomCodeBlockNode(this.content, this.preConfig);

  final String content;
  final PreConfig preConfig;


  @override
  InlineSpan build() {
    final splitContents = content.split(RegExp(r'(\r?\n)|(\r?\t)|(\r)'));
    final scrollController = ScrollController();
    if(splitContents.last.isEmpty) splitContents.removeLast();
    return WidgetSpan(
        child: Container(
      decoration: preConfig.decoration,
      margin: preConfig.margin,
      padding: preConfig.padding,
      width: double.infinity,
      child: Scrollbar(
        thumbVisibility: true,
        controller: scrollController,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(splitContents.length, (index) {
              final currentContent = splitContents[index];
              return ProxyRichText(TextSpan(
                children: highLightSpans(currentContent,
                    language: preConfig.language,
                    theme: preConfig.theme,
                    textStyle: style),
              ));
            }),
          ),
        ),
      ),
    ));
  }

  @override
  TextStyle get style => preConfig.textStyle.merge(parentStyle);
}