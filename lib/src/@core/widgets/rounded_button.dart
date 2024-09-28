// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;

  const RoundedButton({super.key, required this.text, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ColorScheme colorScheme = theme.colorScheme;
    TextTheme textTheme = theme.textTheme;

    Color color = backgroundColor ?? const Color.fromARGB(255, 1, 124, 225);

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      shadowColor: color,
      elevation: 4,
      minimumSize: const Size.fromHeight(60),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      backgroundColor: color,
    );

    return ElevatedButton(
      style: buttonStyle,
      onPressed: () => print("asd"),
      child: Text(text, style: TextStyle(color: Colors.grey.shade200, fontSize: 17)),
    );
  }
}
