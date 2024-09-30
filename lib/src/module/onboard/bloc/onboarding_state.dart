part of 'onboarding_bloc.dart';

class OnboardingState {
  final int position;
  OnboardingState(this.position);
}

class Onboard {
  final Widget header;
  final String title;
  final String subtitle;

  Onboard({required this.header, required this.title, required this.subtitle});
}
