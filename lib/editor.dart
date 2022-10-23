import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class EditorPage extends StatelessWidget {
  EditorPage({super.key});

final QuillController _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuillEditor.basic(controller: _controller, readOnly: false),
      ],
    );
  }
}