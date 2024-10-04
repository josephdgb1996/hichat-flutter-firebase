import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  const CustomTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    InputDecoration inputDecoration = InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey),
      fillColor: Color(0xffFAFAFA),
      suffixIcon: suffixIcon,
      filled: true,
      border: OutlineInputBorder(borderSide: BorderSide.none),
    );

    return TextField(
      decoration: inputDecoration,
    );
  }
}
