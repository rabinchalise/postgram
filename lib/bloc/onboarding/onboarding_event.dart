import 'package:equatable/equatable.dart';

abstract class OnboardingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OnPageChangedEvent extends OnboardingEvent {
  final int value;
  OnPageChangedEvent({required this.value});
  @override
  List<Object?> get props => [value];
}

class OnBoardingSkipEvent extends OnboardingEvent {}

class OnBoardingNextEvent extends OnboardingEvent {}

class DotIndexChangeEvent extends OnboardingEvent {
  final int index;
  DotIndexChangeEvent({required this.index});
  @override
  List<Object?> get props => [index];
}
