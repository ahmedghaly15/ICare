import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_new_class_state.freezed.dart';

@freezed
class AddNewClassState<T> with _$AddNewClassState<T> {
  const factory AddNewClassState.initial() = _AddNewClassInitial;
  const factory AddNewClassState.addNewClassLoading() = AddNewClassLoading;
  const factory AddNewClassState.addNewClassSuccess(String data) =
      AddNewClassSuccess<T>;
  const factory AddNewClassState.addNewClassError(String error) =
      AddNewClassError<T>;
}
