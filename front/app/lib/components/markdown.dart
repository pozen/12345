import 'package:fe_12345/components/code_wrapper.dart';
import 'package:fe_12345/markdown_custom/custom_node.dart';
import 'package:fe_12345/markdown_custom/latex.dart';
import 'package:fe_12345/markdown_custom/video.dart';
import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:selectable/selectable.dart';



class Markdown extends StatelessWidget {
  final String text;
  const Markdown({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    codeWrapper(child, text, lang) => CodeWrapperWidget(child, text, lang,);
    final config = isDark
                ? MarkdownConfig.darkConfig
                : MarkdownConfig.defaultConfig;
    return Selectable(
      //selectionControls: MaterialTextSelectionControls(),
      //selectWordOnDoubleTap: true,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,

            child:
              MarkdownWidget(
                markdownGenerator: MarkdownGenerator(
                    generators: [videoGeneratorWithTag, latexGenerator/*, codeBlockGenerator*/],
                    inlineSyntaxList: [LatexSyntax()],
                    richTextBuilder: (span) => Text.rich(span, /*textScaleFactor: 0.9,*/ style: TextStyle(color: Theme.of(context).colorScheme.primary)),
                    //richTextBuilder: (span) => SelectableText.rich(TextSpan(children: [span]), /*textScaleFactor: 0.9,*/ style: TextStyle(color: Theme.of(context).colorScheme.primary)),
                    textGenerator: (node, config, visitor) =>
                        CustomTextNode(node.textContent, config, visitor),
                ),
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                data:  text,
                config: config.copy(configs: [isDark
                      ? PreConfig.darkConfig.copy(wrapper: codeWrapper, )
                      : const PreConfig().copy(wrapper: codeWrapper, ), /*const PreConfig(theme: a11yLightTheme),*/]),
              )
            )
        ),
      );
  }
}
