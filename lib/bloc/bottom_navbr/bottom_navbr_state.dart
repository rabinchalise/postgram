import 'package:equatable/equatable.dart';

class BottomNavbrState extends Equatable {
  final int index;

  const BottomNavbrState({this.index = 0});

  BottomNavbrState copyWith({int? index}) {
    return BottomNavbrState(index: index ?? this.index);
  }

  @override
  List<Object?> get props => [index];
}
