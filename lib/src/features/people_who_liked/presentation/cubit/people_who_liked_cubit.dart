import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/people_who_liked/domain/usecases/get_people_who_liked_usecase.dart';
import 'package:icare/src/features/people_who_liked/presentation/cubit/people_who_liked_state.dart';

class PeopleWhoLikedCubit extends Cubit<PeopleWhoLikedState> {
  final GetPeopleWhoLikedUseCase _getPeopleWhoLikedUseCase;

  PeopleWhoLikedCubit(
    this._getPeopleWhoLikedUseCase,
  ) : super(const PeopleWhoLikedState.initial());

  void getPeopleWhoLiked(String tinyTaleId) async {
    emit(const PeopleWhoLikedState.getPeopleWhoLikedLoading());

    final result = await _getPeopleWhoLikedUseCase(tinyTaleId);

    result.when(
      success: (peopleWhoLiked) =>
          emit(PeopleWhoLikedState.getPeopleWhoLikedSuccess(peopleWhoLiked)),
      error: (error) => emit(
          PeopleWhoLikedState.getPeopleWhoLikedError(error.failureMsg ?? '')),
    );
  }
}
