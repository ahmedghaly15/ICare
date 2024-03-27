import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/features/tips/data/models/get_random_tip_response.dart';
import 'package:icare/src/features/tips/domain/usecases/get_random_tip.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_state.dart';

class TipsCubit extends Cubit<TipsState> {
  final GetRandomTipUseCase _getRandomTipUseCase;

  TipsCubit(this._getRandomTipUseCase) : super(const TipsState.initial());

  GetRandomTipResponse? randomTip;

  void getRandomTip() async {
    emit(const TipsState.getRandomTipLoading());

    final response = await _getRandomTipUseCase.call(const NoParams());

    response.when(
      success: (data) {
        randomTip = data;
        emit(TipsState.getRandomTipSuccess(data));
      },
      error: (error) => emit(
        TipsState.getRandomTipError(error.apiErrorModel.error ?? ''),
      ),
    );
  }

  bool isRandomTipRead = false;
  void convertIsRandomTipRead() {
    isRandomTipRead = !isRandomTipRead;
    emit(TipsState.convertIsRandomTipRead(isRandomTipRead));
  }

  void emitRandomTipDialogIsClosed() {
    emit(const TipsState.randomTipDialogIsClosed());
  }

  void handleTipsState(TipsState<dynamic> state) {
    state.whenOrNull(
      randomTipDialogIsClosed: () {
        convertIsRandomTipRead();
      },
    );
  }
}
