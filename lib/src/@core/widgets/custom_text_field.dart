import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    const InputDecoration inputDecoration = InputDecoration(
      border: OutlineInputBorder(),
    );

    return const TextField(
      decoration: inputDecoration,
    );
  }
}
