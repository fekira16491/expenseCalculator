import 'dart:convert';

import 'package:flutter/material.dart';

class TextEditorWidget extends StatelessWidget {
  final TextEditingController controller;
  final String placeholderHunt;
  final bool isPassword;

  const TextEditorWidget(
      {super.key,
      required this.controller,
      required this.placeholderHunt,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        child: TextField(
          controller: controller,
          maxLines: 1,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: placeholderHunt,
            border: const OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
