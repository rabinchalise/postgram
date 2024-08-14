import 'package:equatable/equatable.dart';

abstract class BottomNavbrEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class BottomNavbrIndexChangeEvent extends BottomNavbrEvent {
  final int index;

  BottomNavbrIndexChangeEvent({required this.index});

  @override
  List<Object?> get props => [index];
}
