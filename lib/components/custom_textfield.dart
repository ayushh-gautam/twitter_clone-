import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.obsecuretext,
    required this.text,
    this.controller,
  });
  final bool obsecuretext;
  final String text;

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      padding: const EdgeInsets.all(15),
      style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
      obscureText: obsecuretext,
      placeholder: text,
      controller: controller,
    );
  }
}
