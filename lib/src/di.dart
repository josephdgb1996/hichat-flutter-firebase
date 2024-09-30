import 'package:app/src/module/onboard/bloc/onboarding_bloc.dart';
import 'package:get_it/get_it.dart';

class DI {
  DI._();

  static GetIt getIt = GetIt.instance;

  static void setup() {
    getIt.registerSingleton(OnboardingBloc());
  }
}
