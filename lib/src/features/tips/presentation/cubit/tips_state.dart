import 'package:freezed_annotation/freezed_annotation.dart';

part 'tips_state.freezed.dart';

@freezed
class TipsState<T> with _$TipsState<T> {
  const factory TipsState.initial() = _TipsStateInitial;
  const factory TipsState.getRandomTipLoading() = GetRandomTipLoading;
  const factory TipsState.getRandomTipSuccess(T data) = GetRandomTipSuccess<T>;
  const factory TipsState.getRandomTipError(String error) = GetRandomTipError;
  const factory TipsState.convertIsRandomTipRead(bool isRandomTipRead) =
      ConvertIsRandomTipRead<T>;
  const factory TipsState.randomTipDialogIsClosed() = RandomTipDialogIsClosed;
}
