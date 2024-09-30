import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'package:app/src/@core/widgets/rounded_button.dart';
import 'package:app/src/module/onboard/bloc/onboarding_bloc.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const EdgeInsets edgeInsets = EdgeInsets.symmetric(horizontal: 10.0);

    Widget body = Column(children: [
      const _OnboardHead(),
      Container(
        height: 200,
        padding: edgeInsets,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [_OnboardText(), _OnboardDots()],
        ),
      ),
    ]);

    Widget bottomNavigation = Container(
      height: 150,
      padding: edgeInsets,
      child: const Center(child: RoundedButton(text: "Get Started")),
    );

    return Scaffold(
      body: GestureDetector(onPanUpdate: (details) => _onPanUpdate(context, details), child: body),
      bottomNavigationBar: bottomNavigation,
    );
  }

  void _onPanUpdate(BuildContext context, DragUpdateDetails details) async {
    // Swiping in right direction.
    if (details.delta.dx > 0) {
      context.read<OnboardingBloc>().add(BackOnboard());
    }

    // Swiping in left direction.
    if (details.delta.dx < 0) {
      context.read<OnboardingBloc>().add(NextOnboard());
    }
  }
}

class _OnboardHead extends StatelessWidget {
  const _OnboardHead();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(builder: (context, state) {
      return Expanded(
        child: Container(
          color: Colors.red,
          child: PageView(
            controller: OnboardingBloc.pageController,
            children: OnboardingBloc.onboards.map((Onboard onboard) => onboard.header).toList(),
          ),
        ),
      );
    });
  }
}

class _OnboardText extends StatelessWidget {
  const _OnboardText();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle titleTextStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: theme.primaryColor);
    TextStyle subtitleTextStyle = const TextStyle();

    return Column(children: [
      Text("Welcome to Hichat!", style: titleTextStyle),
      Text("The best messenger and chat app of the century to make your day great", style: subtitleTextStyle),
    ]);
  }
}

class _OnboardDots extends StatelessWidget {
  const _OnboardDots();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(builder: (context, state) {
      return DotsIndicator(
        dotsCount: OnboardingBloc.onboards.length,
        position: state.position,
        decorator: const DotsDecorator(activeShape: RoundedRectangleBorder()),
      );
    });
  }
}
