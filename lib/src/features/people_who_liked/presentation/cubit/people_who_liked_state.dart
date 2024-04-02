import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/models/icare_user.dart';

part 'people_who_liked_state.freezed.dart';

@freezed
class PeopleWhoLikedState<T> with _$PeopleWhoLikedState<T> {
  const factory PeopleWhoLikedState.initial() = _PeopleWhoLikedInitial;
  const factory PeopleWhoLikedState.getPeopleWhoLikedLoading() =
      GetPeopleWhoLikedLoading;
  const factory PeopleWhoLikedState.getPeopleWhoLikedSuccess(
      List<ICareUser> peopleWhoLiked) = GetPeopleWhoLikedSuccess<T>;
  const factory PeopleWhoLikedState.getPeopleWhoLikedError(String error) =
      GetPeopleWhoLikedError<T>;
}
