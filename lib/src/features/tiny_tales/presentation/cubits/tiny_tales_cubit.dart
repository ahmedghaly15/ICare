import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/create_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales_state.dart';

class TinyTalesCubit extends Cubit<TinyTalesState> {
  final CreateTinyTaleUseCase createTinyTaleUseCase;

  TinyTalesCubit({
    required this.createTinyTaleUseCase,
  }) : super(const TinyTalesState.initial());

  void createTinyTale(CreateTinyTaleParams params) async {
    emit(const TinyTalesState.loading());
    final result = await createTinyTaleUseCase.call(params);
    result.when(
      success: (tinyTale) => emit(TinyTalesState.success(tinyTale)),
      error: (error) => emit(
          TinyTalesState.error(error.failureMsg ?? AppStrings.unKnownError)),
    );
  }
}
