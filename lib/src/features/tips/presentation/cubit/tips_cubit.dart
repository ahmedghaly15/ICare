import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/tips/domain/usecases/get_random_tip.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_state.dart';

class TipsCubit extends Cubit<TipsState> {
  final GetRandomTipUseCase _getRandomTipUseCase;

  TipsCubit(this._getRandomTipUseCase) : super(const TipsState.initial());

  void getRandomTip() async {
    emit(const TipsState.getRandomTipLoading());

    final response = await _getRandomTipUseCase.call(const NoParams());

    response.when(
      success: (randomTip) => emit(TipsState.getRandomTipSuccess(randomTip)),
      error: (error) => emit(
        TipsState.getRandomTipError(
            error.apiErrorModel.error ?? AppStrings.unKnownError),
      ),
    );
  }
}
