import 'package:freezed_annotation/freezed_annotation.dart';

part 'tiny_tales_state.freezed.dart';

@freezed
class TinyTalesState<T> with _$TinyTalesState<T> {
  const factory TinyTalesState.initial() = _TinyTalesInitial;
  const factory TinyTalesState.loading() = CreateTinyTaleLoading;
  const factory TinyTalesState.success(T data) = CreateTinyTaleSuccess;
  const factory TinyTalesState.error(String message) = CreateTinyTaleError;
}
