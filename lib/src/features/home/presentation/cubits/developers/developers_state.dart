import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/home/data/models/developer.dart';

part 'developers_state.freezed.dart';

@freezed
class DevelopersState<T> with _$DevelopersState<T> {
  const factory DevelopersState.initial() = _DevelopersInitial;
  const factory DevelopersState.getDevelopersLoading() = GetDevelopersLoading;
  const factory DevelopersState.getDevelopersSuccess(
      List<Developer> developers) = GetDevelopersSucces<T>;
  const factory DevelopersState.getDevelopersError(String error) =
      GetDevelopersError<T>;
}
