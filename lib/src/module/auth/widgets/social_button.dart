import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String socialName;
  const SocialButton({super.key, required this.socialName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton.icon(
        style:
            OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(50), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
        onPressed: () {},
        label: Text("Continue with $socialName"),
        icon: const Icon(Icons.abc),
      ),
    );
  }
}
