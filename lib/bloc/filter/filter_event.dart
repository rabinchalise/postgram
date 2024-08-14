import 'package:equatable/equatable.dart';

abstract class FilterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class JobLevelChangedEvent extends FilterEvent {
  final bool value;
  final int index;

  JobLevelChangedEvent({required this.value, required this.index});

  @override
  List<Object?> get props => [value, index];
}

class WorkingModelChangeEvent extends FilterEvent {
  final bool value;
  final int index;

  WorkingModelChangeEvent({required this.value, required this.index});

  @override
  List<Object?> get props => [value, index];
}

class CompanyChangeEvent extends FilterEvent {
  final bool value;
  final int index;

  CompanyChangeEvent({required this.value, required this.index});

  @override
  List<Object?> get props => [value, index];
}

class MinSalaryChangeEvent extends FilterEvent {
  final double minValue;

  MinSalaryChangeEvent({required this.minValue});

  @override
  List<Object?> get props => [minValue];
}

class MaxSalaryChangeEvent extends FilterEvent {
  final double maxValue;

  MaxSalaryChangeEvent({required this.maxValue});

  @override
  List<Object?> get props => [maxValue];
}
