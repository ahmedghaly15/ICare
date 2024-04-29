import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/access_collections.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/bookmark_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/delete_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/get_bookmarked_tiny_tales.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/get_people_who_liked_usecase.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/is_tiny_tale_bookmarked_by_me.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/is_tiny_tale_liked_by_me.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/like_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/un_bookmark_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/unlike_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_state.dart';

class TinyTalesCubit extends Cubit<TinyTalesState> {
  final LikeTinyTaleUseCase likeTinyTaleUseCase;
  final UnLikeTinyTaleUseCase unLikeTinyTaleUseCase;
  final DeleteTinyTaleUseCase deleteTinyTaleUseCase;
  final IsTinyTaleLikeByMeUseCase isTinyTaleLikedByMeUseCase;
  final BookmarkTinyTaleUseCase bookmarkTinyTaleUseCase;
  final UnBookmarkTinyTaleUseCase unBookmarkTinyTaleUseCase;
  final GetBookmarkedTinyTalesUseCase getBookmarkedTinyTalesUseCase;
  final IsTinyTaleBookmarkedByMeUseCase isTinyTaleBookmarkedByMeUseCase;
  final GetPeopleWhoLikedUseCase getPeopleWhoLikedUseCase;

  TinyTalesCubit({
    required this.likeTinyTaleUseCase,
    required this.unLikeTinyTaleUseCase,
    required this.deleteTinyTaleUseCase,
    required this.isTinyTaleLikedByMeUseCase,
    required this.bookmarkTinyTaleUseCase,
    required this.unBookmarkTinyTaleUseCase,
    required this.getBookmarkedTinyTalesUseCase,
    required this.isTinyTaleBookmarkedByMeUseCase,
    required this.getPeopleWhoLikedUseCase,
  }) : super(const TinyTalesState.initial());

  Stream<QuerySnapshot<Map<String, dynamic>>> streamTinyTales() {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.tinyTalesCollection)
        .orderBy(
          AppStrings.dateTime,
          descending: true,
        )
        .snapshots();
  }

  void likeTinyTale(LikeParams params) async {
    final result = await likeTinyTaleUseCase.call(params);
    result.when(
      success: (_) => emit(const TinyTalesState.likeTinyTaleSuccess()),
      error: (error) => emit(
        TinyTalesState.likeTinyTaleError(error.failureMsg ?? ''),
      ),
    );
  }

  void unlikeTinyTale(String tinyTaleId) async {
    final result = await unLikeTinyTaleUseCase.call(tinyTaleId);
    result.when(
      success: (_) => emit(const TinyTalesState.unlikeTinyTaleSuccess()),
      error: (error) => emit(
        TinyTalesState.unlikeTinyTaleError(error.failureMsg ?? ''),
      ),
    );
  }

  Future<void> getPeopleWhoLiked(String tinyTaleId) async {
    emit(const TinyTalesState.getPeopleWhoLikedLoading());
    final result = await getPeopleWhoLikedUseCase(tinyTaleId);
    result.when(
      success: (peopleWhoLiked) =>
          emit(TinyTalesState.getPeopleWhoLikedSuccess(peopleWhoLiked)),
      error: (error) =>
          emit(TinyTalesState.getPeopleWhoLikedError(error.failureMsg ?? '')),
    );
  }

  void deleteTinyTale(String tinyTaleId) async {
    emit(const TinyTalesState.deleteTinyTaleLoading());
    final result = await deleteTinyTaleUseCase.call(tinyTaleId);
    result.when(
      success: (_) => emit(const TinyTalesState.deleteTinyTaleSuccess()),
      error: (error) => emit(
        TinyTalesState.deleteTinyTaleError(error.failureMsg ?? ''),
      ),
    );
  }

  Stream<bool> isTinyTaleLikedByMe(String tinyTaleId) {
    return isTinyTaleLikedByMeUseCase.call(tinyTaleId);
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> likesStream(String tinyTaleId) {
    return accessTinyTaleLikesCollection(tinyTaleId).snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> streamFirstThreeLikeTinyTale(
      String tinyTaleId) {
    return accessTinyTaleLikesCollection(tinyTaleId).limit(3).snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> commentsStream(
      String tinyTaleId) {
    return accessTinyTalesCollection()
        .doc(tinyTaleId)
        .collection(AppStrings.commentsCollection)
        .snapshots();
  }

  void bookmarkTinyTale(TinyTale tinyTale) async {
    emit(const TinyTalesState.bookmarkTinyTaleLoading());
    final result = await bookmarkTinyTaleUseCase.call(tinyTale);
    result.when(
      success: (_) => emit(const TinyTalesState.bookmarkTinyTaleSuccess()),
      error: (error) => emit(
        TinyTalesState.bookmarkTinyTaleError(error.failureMsg ?? ''),
      ),
    );
  }

  void unBookmarkTinyTale(String tinyTaleId) async {
    emit(const TinyTalesState.unBookmarkTinyTaleLoading());
    final result = await unBookmarkTinyTaleUseCase.call(tinyTaleId);
    result.when(
      success: (_) => emit(const TinyTalesState.unBookmarkTinyTaleSuccess()),
      error: (error) => emit(
        TinyTalesState.unBookmarkTinyTaleError(error.failureMsg ?? ''),
      ),
    );
  }

  Future<void> getBookmarkedTinyTales() async {
    emit(const TinyTalesState.getBookmarkedTinyTalesLoading());
    final result = await getBookmarkedTinyTalesUseCase.call(const NoParams());
    result.when(
      success: (tinyTales) =>
          emit(TinyTalesState.getBookmarkedTinyTalesSuccess(tinyTales)),
      error: (error) => emit(
        TinyTalesState.getBookmarkedTinyTalesError(error.failureMsg ?? ''),
      ),
    );
  }

  Stream<bool> isTinyTaleBookmarkedByMe(String tinyTaleId) {
    return isTinyTaleBookmarkedByMeUseCase.call(tinyTaleId);
  }
}
