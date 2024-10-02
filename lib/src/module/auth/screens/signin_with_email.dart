import 'package:app/src/@core/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class SignInWithEmail extends StatelessWidget {
  const SignInWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Placeholder(),
            Text("Login to Your Account"),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.red,
                border: OutlineInputBorder()
              ),
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.red,
                border: OutlineInputBorder()
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Checkbox(value: false, onChanged: null), Text("Remember me")],
            ),
            RoundedButton(text: "Sign in"),
            Text("Dont have account? Sign up"),
          ],
        ),
      ),
    );
  }
}
