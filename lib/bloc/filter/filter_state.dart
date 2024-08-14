import 'package:equatable/equatable.dart';

class FilterState extends Equatable {
  final List<bool> isJobchecked;
  final List<bool> isWorkingchecked;
  final List<bool> isCompanychecked;
  final double minSalary;
  final double maxSalary;

  const FilterState(
      {this.isJobchecked = const [false, false, false, false],
      this.isWorkingchecked = const [false, false, false, false],
      this.isCompanychecked = const [false, false, false, false],
      this.minSalary = 50,
      this.maxSalary = 300});

  FilterState copyWith(
      {List<bool>? isJobchecked,
      List<bool>? isWorkingchecked,
      List<bool>? isCompanychecked,
      double? minSalary,
      double? maxSalary}) {
    return FilterState(
        isJobchecked: isJobchecked ?? this.isJobchecked,
        isWorkingchecked: isWorkingchecked ?? this.isWorkingchecked,
        isCompanychecked: isCompanychecked ?? this.isCompanychecked,
        minSalary: minSalary ?? this.minSalary,
        maxSalary: maxSalary ?? this.maxSalary);
  }

  @override
  List<Object?> get props =>
      [isJobchecked, isWorkingchecked, isCompanychecked, minSalary, maxSalary];
}
