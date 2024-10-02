import 'package:app/src/@core/widgets/rounded_button.dart';
import 'package:app/src/module/auth/widgets/or_divider.dart';
import 'package:app/src/module/auth/widgets/social_button.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Placeholder(fallbackHeight: 300),
            Text("Lets you in", style: TextStyle(fontSize: 38.0, fontWeight: FontWeight.w700)),
            Column(children: [
              SocialButton(socialName: SocialName.facebook),
              SocialButton(socialName: SocialName.google),
              SocialButton(socialName: SocialName.apple),
            ]),
            OrDivider(),
            RoundedButton(text: "Sign in with Email"),
            Text("Dont have account? Sign up"),
          ],
        ),
      ),
    );
  }
}
