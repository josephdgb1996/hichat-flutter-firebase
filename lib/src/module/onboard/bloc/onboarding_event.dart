part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingEvent {}

final class NextOnboard extends OnboardingEvent {}

final class BackOnboard extends OnboardingEvent {}
