import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/bloc/bottom_navbr/bottom_navbr_event.dart';
import 'package:job_finder/bloc/bottom_navbr/bottom_navbr_state.dart';

class BottomNavbrBloc extends Bloc<BottomNavbrEvent, BottomNavbrState> {
  BottomNavbrBloc() : super(const BottomNavbrState()) {
    on<BottomNavbrIndexChangeEvent>(_bottomNavbrIndexChangeEvent);
  }

  void _bottomNavbrIndexChangeEvent(
      BottomNavbrIndexChangeEvent event, Emitter emit) {
    final updatedIndex = event.index;
    emit(state.copyWith(index: updatedIndex));
  }
}
