import 'package:flutter/material.dart';
import 'package:portfolio_website_task10/utilities/color_utility.dart';

class MyTextfieldWidget extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final int maxLine;
  const MyTextfieldWidget(
      {this.hintText, this.controller, this.maxLine = 1, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLine,
      style: const TextStyle(
        color: ColorUtility.byLight,
      ),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(17),
          filled: true,
          fillColor: ColorUtility.textFieldBg,
          focusedBorder: getInputBorder,
          enabledBorder: getInputBorder,
          border: getInputBorder,
          hintText: hintText,
          hintStyle: const TextStyle(color: ColorUtility.hintDark)),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none);
  }
}
