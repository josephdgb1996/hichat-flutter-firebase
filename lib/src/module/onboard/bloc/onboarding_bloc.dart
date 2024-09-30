import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  static PageController pageController = PageController();

  List<Onboard> onboards = [];

  OnboardingBloc() : super(OnboardingCompleted()) {
    on<ChangeOnboard>(onOnboardingChange);
  }

  void onOnboardingChange(OnboardingEvent event, Emitter<OnboardingState> state){}

  
}

class Onboard {
  final String imagePath;
  final String title;
  final String subtitle;

  Onboard({required this.imagePath, required this.title, required this.subtitle});
}
