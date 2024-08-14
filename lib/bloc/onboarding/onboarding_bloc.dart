import 'package:bloc/bloc.dart';

import 'onboarding_event.dart';
import 'onboarding_state.dart';

class OnBoardingBloc extends Bloc<OnboardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const OnBoardingState()) {
    on<OnPageChangedEvent>(_onPageChangedEvent);
    on<OnBoardingSkipEvent>(_onBoardingSkipEvent);
    on<OnBoardingNextEvent>(_onBoardingNextEvent);
    on<DotIndexChangeEvent>(_dotIndexChangeEvent);
  }

  void _onPageChangedEvent(
      OnPageChangedEvent event, Emitter<OnBoardingState> emit) {
    int value = event.value;
    // print(value);

    emit(state.copyWith(index: value));
  }

  void _onBoardingSkipEvent(
      OnBoardingSkipEvent event, Emitter<OnBoardingState> emit) {
    if (state.index != 2) {
      const int updatedIndex = 2;
      emit(
        state.copyWith(index: updatedIndex),
      );
    }
  }

  void _onBoardingNextEvent(
      OnBoardingNextEvent event, Emitter<OnBoardingState> emit) {
    emit(state.copyWith(index: state.index + 1));
  }

  void _dotIndexChangeEvent(
      DotIndexChangeEvent event, Emitter<OnBoardingState> emit) {
    final int index = event.index;
    print('my index:::$index');
    emit(state.copyWith(index: index));
  }
}
