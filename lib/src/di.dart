import 'package:app/src/module/onboard/bloc/onboarding_bloc.dart';
import 'package:get_it/get_it.dart';

abstract class DependenciInjection {
  final getIt = GetIt.instance;
  
  void setup(){
    getIt.registerSingleton(OnboardingBloc());
  }
}