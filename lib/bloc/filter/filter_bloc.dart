import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/bloc/filter/filter_event.dart';

import 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(const FilterState()) {
    on<JobLevelChangedEvent>(_jobLevelChangedEvent);
    on<WorkingModelChangeEvent>(_workingModelChangeEvent);
    on<CompanyChangeEvent>(_companyChangeEvent);
    on<MinSalaryChangeEvent>(_minSalaryChangeEvent);
    on<MaxSalaryChangeEvent>(_maxSalaryChangeEvent);
  }

  void _jobLevelChangedEvent(
      JobLevelChangedEvent event, Emitter<FilterState> emit) {
    final bool value = event.value;
    final int index = event.index;
    final List<bool> updatedCheckboxValue = List.from(state.isJobchecked);
    updatedCheckboxValue[index] = value;
    emit(
      state.copyWith(
        isJobchecked: updatedCheckboxValue,
      ),
    );
  }

  void _workingModelChangeEvent(
      WorkingModelChangeEvent event, Emitter<FilterState> emit) {
    final bool value = event.value;
    final int index = event.index;

    final List<bool> updatedCheckboxValue = List.from(state.isWorkingchecked);
    updatedCheckboxValue[index] = value;

    emit(state.copyWith(isWorkingchecked: updatedCheckboxValue));
  }

  void _companyChangeEvent(
      CompanyChangeEvent event, Emitter<FilterState> emit) {
    final bool value = event.value;
    final int index = event.index;
    final List<bool> updatedCheckboxValue = List.from(state.isCompanychecked);
    updatedCheckboxValue[index] = value;
    emit(state.copyWith(isCompanychecked: updatedCheckboxValue));
  }

  void _minSalaryChangeEvent(
      MinSalaryChangeEvent event, Emitter<FilterState> emit) {
    final double minValue = event.minValue;

    emit(state.copyWith(minSalary: minValue));
  }

  void _maxSalaryChangeEvent(
      MaxSalaryChangeEvent event, Emitter<FilterState> emit) {
    final double maxValue = event.maxValue;

    emit(state.copyWith(maxSalary: maxValue));
  }
}
