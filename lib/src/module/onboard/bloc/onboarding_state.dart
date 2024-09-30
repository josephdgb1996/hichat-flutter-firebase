part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingState {}

final class OnboardingIncomplete extends OnboardingState {}

final class OnboardingCompleted extends OnboardingState {}
