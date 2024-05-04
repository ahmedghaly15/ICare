import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/features/home/domain/usecases/get_developers.dart';
import 'package:icare/src/features/home/presentation/cubits/developers/developers_state.dart';

class DevelopersCubit extends Cubit<DevelopersState> {
  final GetDevelopersUseCase _getDevelopersUseCase;

  DevelopersCubit(
    this._getDevelopersUseCase,
  ) : super(const DevelopersState.initial());

  void getDevelopers() async {
    emit(const DevelopersState.getDevelopersLoading());
    final result = await _getDevelopersUseCase(const NoParams());
    result.when(
      success: (developers) =>
          emit(DevelopersState.getDevelopersSuccess(developers)),
      error: (error) =>
          emit(DevelopersState.getDevelopersError(error.failureMsg ?? '')),
    );
  }
}
