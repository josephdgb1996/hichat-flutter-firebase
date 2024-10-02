import 'package:app/src/module/auth/screens/auth_screen.dart';
import 'package:app/src/module/auth/screens/signin_with_email.dart';
import 'package:app/src/module/auth/screens/signup_with_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/src/module/onboard/bloc/onboarding_bloc.dart';

void main() => runApp(const HiChat());

class HiChat extends StatelessWidget {
  const HiChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hi Chat',
      home: SafeArea(
        child: BlocProvider(
          create: (context) => OnboardingBloc(),
          child: const SignUpWithEmail(),
        ),
      ),
    );
  }
}
