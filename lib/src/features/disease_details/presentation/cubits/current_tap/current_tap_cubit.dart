import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/current_tap/current_tap_state.dart';

class CurrentTapCubit extends Cubit<CurrentTapState> {
  CurrentTapCubit() : super(const CurrentTapState.initial());

  int currentTap = 0;
  void updateCurrentTap(int index) {
    if (currentTap != index) {
      currentTap = index;
      emit(CurrentTapState.updateCurrentTab(index));
    }
  }
}
