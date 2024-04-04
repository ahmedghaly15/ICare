import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/search/domain/usecases/search_users.dart';
import 'package:icare/src/features/search/presentation/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchUsersUseCase _searchUsersUseCase;

  SearchCubit(
    this._searchUsersUseCase,
  ) : super(const SearchState.initial()) {
    searchController = TextEditingController();
  }

  late final TextEditingController searchController;

  void searchUsers() async {
    if (searchController.text.isEmpty) {
      emit(const SearchState.initial());

      return;
    }

    emit(const SearchState.searchUsersLoading());
    final result = await _searchUsersUseCase.call(searchController.text);
    result.when(
      success: (searchResult) {
        emit(SearchState.searchUsersSuccess(searchResult));
      },
      error: (error) {
        emit(SearchState.searchUsersError(error.failureMsg ?? ''));
      },
    );
  }

  void setNewTextValue(String text) {
    searchController.text = text;
    emit(SearchState.setNewTextValue(text));
  }

  void emitInitial() {
    emit(const SearchState.initial());
  }

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }
}
