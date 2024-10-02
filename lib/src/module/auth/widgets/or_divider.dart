import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.grey.shade400;
    Widget divider = Expanded(child: Divider(color: color));

    return Row(children: [
      divider,
      const Padding(padding: EdgeInsets.all(8.0), child: Text("or")),
      divider,
    ]);
  }
}
