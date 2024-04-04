import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/search/domain/usecases/search_users.dart';
import 'package:icare/src/features/search/presentation/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchUsersUseCase _searchUsersUseCase;

  SearchCubit(
    this._searchUsersUseCase,
  ) : super(const SearchState.initial());

  void searchUsers(String nameOrEmail) async {
    if (nameOrEmail.isEmpty) {
      emit(const SearchState.initial());
    }

    emit(const SearchState.searchUsersLoading());
    final result = await _searchUsersUseCase.call(nameOrEmail);
    result.when(
      success: (searchResult) {
        emit(SearchState.searchUsersSuccess(searchResult));
      },
      error: (error) {
        emit(SearchState.searchUsersError(error.failureMsg ?? ''));
      },
    );
  }
}
