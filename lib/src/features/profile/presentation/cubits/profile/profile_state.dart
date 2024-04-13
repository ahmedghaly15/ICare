import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = _ProfileInitial;
  const factory ProfileState.getUserTinyTalesLoading() =
      GetUserTinyTalesLoading;
  const factory ProfileState.getUserTinyTalesSuccess(List<TinyTale> data) =
      GetUserTinyTalesSuccess<T>;
  const factory ProfileState.getUserTinyTalesError(String error) =
      GetUserTinyTalesError<T>;
}
