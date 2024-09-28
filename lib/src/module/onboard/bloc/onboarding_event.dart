part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingEvent {}

final class PreviusOnboarding extends OnboardingEvent {}

final class NextOnboarding extends OnboardingEvent {}

final class CompleteOnboarding extends OnboardingEvent {}