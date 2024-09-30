import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  static PageController pageController = PageController();
  static List<Onboard> onboards = [
    Onboard(header: const Text("aaaaaaaaaaa"), title: "Welcome to HiChat! 1", subtitle: "Subtitle 1"),
    Onboard(header: const Text("bbbbbbbbbbb"), title: "Welcome to HiChat! 2", subtitle: "Subtitle 2"),
    Onboard(header: const Text("ccccccccccc"), title: "Welcome to HiChat! 3", subtitle: "Subtitle 3"),
  ];

  OnboardingBloc() : super(OnboardingState(0)) {
    on<NextOnboard>(onNextOnboard);
    on<BackOnboard>(onBackOnboard);
  }

  int _position = 0;

  void onNextOnboard(OnboardingEvent event, Emitter<OnboardingState> emit) {
    if (_position >= onboards.length) return;
    pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.linear);
    _position = _position + 1;
    emit(OnboardingState(_position));
  }

  void onBackOnboard(OnboardingEvent event, Emitter<OnboardingState> emit) {
    if (_position <= 0) return;
    pageController.previousPage(duration: const Duration(seconds: 1), curve: Curves.linear);
        _position = _position - 1;
    emit(OnboardingState(_position));
  }
}
