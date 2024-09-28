import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {

  List<Onboard> onboards = [];

  OnboardingBloc() : super(OnboardingInitial()) {
    on<OnboardingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  void onOnboardingChange(){}

  
}

class Onboard {
  final String imagePath;
  final String title;
  final String subtitle;

  Onboard({required this.imagePath, required this.title, required this.subtitle});
}
