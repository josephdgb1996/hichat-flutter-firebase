import 'package:app/src/module/onboard/ui/screens/onboard_screen.dart';
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
          child: const OnboardScreen(),
        ),
      ),
    );
  }
}
