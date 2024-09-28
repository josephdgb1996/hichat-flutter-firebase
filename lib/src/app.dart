import 'package:app/src/module/onboard/ui/screens/onboard_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const HiChat());

class HiChat extends StatelessWidget {
  const HiChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hi Chat',
      home: SafeArea(
        child: OnboardScreen(),
      ),
    );
  }
}
