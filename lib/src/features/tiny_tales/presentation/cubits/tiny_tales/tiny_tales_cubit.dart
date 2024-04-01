import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/helpers/app_regex.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/bookmark_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/delete_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/get_bookmarked_tiny_tales.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/get_tiny_tales.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/is_tiny_tale_liked_by_me.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/like_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/un_bookmark_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/unlike_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_state.dart';
import 'package:url_launcher/url_launcher.dart';

class TinyTalesCubit extends Cubit<TinyTalesState> {
  final LikeTinyTaleUseCase likeTinyTaleUseCase;
  final UnLikeTinyTaleUseCase unLikeTinyTaleUseCase;
  final DeleteTinyTaleUseCase deleteTinyTaleUseCase;
  final IsTinyTaleLikeByMeUseCase isTinyTaleLikedByMeUseCase;
  final GetTinyTalesUseCase getTinyTalesUseCase;
  final BookmarkTinyTaleUseCase bookmarkTinyTaleUseCase;
  final UnBookmarkTinyTaleUseCase unBookmarkTinyTaleUseCase;
  final GetBookmarkedTinyTalesUseCase getBookmarkedTinyTalesUseCase;

  TinyTalesCubit({
    required this.likeTinyTaleUseCase,
    required this.unLikeTinyTaleUseCase,
    required this.deleteTinyTaleUseCase,
    required this.isTinyTaleLikedByMeUseCase,
    required this.getTinyTalesUseCase,
    required this.bookmarkTinyTaleUseCase,
    required this.unBookmarkTinyTaleUseCase,
    required this.getBookmarkedTinyTalesUseCase,
  }) : super(const TinyTalesState.initial());

  Future<void> getTinyTales() async {
    emit(const TinyTalesState.getTinyTalesLoading());
    final result = await getTinyTalesUseCase.call(const NoParams());
    result.when(
      success: (tinyTales) =>
          emit(TinyTalesState.getTinyTalesSuccess(tinyTales)),
      error: (error) =>
          emit(TinyTalesState.getTinyTalesError(error.failureMsg ?? '')),
    );
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
    return _accessTinyTaleLikesCollection(tinyTaleId).snapshots();
  }

  CollectionReference<Map<String, dynamic>> _accessTinyTaleLikesCollection(
      String tinyTaleId) {
    return _accessTinyTalesCollection()
        .doc(tinyTaleId)
        .collection(AppStrings.likesCollection);
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> streamFirstThreeLikeTinyTale(
      String tinyTaleId) {
    return _accessTinyTaleLikesCollection(tinyTaleId).limit(3).snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> commentsStream(
      String tinyTaleId) {
    return _accessTinyTalesCollection()
        .doc(tinyTaleId)
        .collection(AppStrings.commentsCollection)
        .snapshots();
  }

  CollectionReference<Map<String, dynamic>> _accessTinyTalesCollection() {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.tinyTalesCollection);
  }

  void openUrl(LinkableElement link) async {
    if (AppRegex.isEmailValid(link.text)) {
      await launchUrl(Uri.parse(link.url));
    } else {
      await launchUrl(
        Uri.parse(link.url),
        mode: LaunchMode.inAppBrowserView,
      );
    }
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

  void getBookmarkedTinyTales() async {
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
}
