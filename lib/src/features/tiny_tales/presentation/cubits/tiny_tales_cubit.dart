import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/create_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/like_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/unlike_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales_state.dart';

class TinyTalesCubit extends Cubit<TinyTalesState> {
  final CreateTinyTaleUseCase createTinyTaleUseCase;
  final LikeTinyTaleUseCase likeTinyTaleUseCase;
  final UnLikeTinyTaleUseCase unLikeTinyTaleUseCase;

  TinyTalesCubit({
    required this.createTinyTaleUseCase,
    required this.likeTinyTaleUseCase,
    required this.unLikeTinyTaleUseCase,
  }) : super(const TinyTalesState.initial());

  void createTinyTale(CreateTinyTaleParams params) async {
    emit(const TinyTalesState.createTinyTaleLoading());
    final result = await createTinyTaleUseCase.call(params);
    result.when(
      success: (tinyTale) =>
          emit(TinyTalesState.createTinyTaleSuccess(tinyTale)),
      error: (error) => emit(TinyTalesState.createTinyTaleError(
          error.failureMsg ?? AppStrings.unKnownError)),
    );
  }

  void likeTinyTale(String tinyTaleId) async {
    final result = await likeTinyTaleUseCase.call(tinyTaleId);
    result.when(
      success: (tinyTale) => emit(const TinyTalesState.likeTinyTaleSuccess()),
      error: (error) => emit(
        TinyTalesState.likeTinyTaleError(
            error.failureMsg ?? AppStrings.unKnownError),
      ),
    );
  }

  void unlikeTinyTale(String tinyTaleId) async {
    final result = await unLikeTinyTaleUseCase.call(tinyTaleId);
    result.when(
      success: (tinyTale) => emit(const TinyTalesState.unlikeTinyTaleSuccess()),
      error: (error) => emit(
        TinyTalesState.unlikeTinyTaleError(
            error.failureMsg ?? AppStrings.unKnownError),
      ),
    );
  }
}
