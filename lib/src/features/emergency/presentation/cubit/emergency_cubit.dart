import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/features/emergency/domain/usecases/get_emergency_diseases.dart';
import 'package:icare/src/features/emergency/presentation/cubit/emergency_state.dart';

class EmergencyCubit extends Cubit<EmergencyState> {
  final GetEmergencyDiseasesUseCase _getEmergencyDiseasesUseCase;

  EmergencyCubit(
    this._getEmergencyDiseasesUseCase,
  ) : super(const EmergencyState.initial());

  void getEmergencyDiseases() async {
    emit(const EmergencyState.getEmergencyDiseasesLoading());

    final result = await _getEmergencyDiseasesUseCase(const NoParams());

    result.when(
      success: (data) => emit(EmergencyState.getEmergencyDiseasesSuccess(data)),
      error: (error) => emit(
        EmergencyState.getEmergencyDiseasesError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }
}
