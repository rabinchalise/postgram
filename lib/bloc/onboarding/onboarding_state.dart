import 'package:equatable/equatable.dart';

class OnBoardingState extends Equatable {
  final int index;
  const OnBoardingState({
    this.index = 0,
  });

  OnBoardingState copyWith({int? index}) {
    return OnBoardingState(
      index: index ?? this.index,
    );
  }

  @override
  List<Object?> get props => [index];
}
