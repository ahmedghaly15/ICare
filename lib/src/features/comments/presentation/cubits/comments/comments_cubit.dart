import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/get_date.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/comments/data/models/comment_data.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/data/models/delete_comment_params.dart';
import 'package:icare/src/features/comments/data/models/type_new_comment_params.dart';
import 'package:icare/src/features/comments/domain/usecases/delete_comment.dart';
import 'package:icare/src/features/comments/domain/usecases/is_comment_liked_by_me.dart';
import 'package:icare/src/features/comments/domain/usecases/like_comment.dart';
import 'package:icare/src/features/comments/domain/usecases/stream_comments.dart';
import 'package:icare/src/features/comments/domain/usecases/type_new_comment.dart';
import 'package:icare/src/features/comments/domain/usecases/unlike_comment.dart';
import 'package:icare/src/features/comments/domain/usecases/upload_comment_image.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_state.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class CommentsCubit extends Cubit<CommentsState> {
  final StreamCommentsUseCase streamCommentsUseCase;
  final TypeNewCommentUseCase typeNewCommentUseCase;
  final UploadCommentImageUseCase uploadCommentImageUseCase;
  final DeleteCommentUseCase deleteCommentUseCase;
  final LikeCommentUseCase likeCommentUseCase;
  final UnLikeCommentUseCase unLikeCommentUseCase;
  final IsCommentLikedByMeUseCase isCommentLikedByMeUseCase;

  CommentsCubit({
    required this.streamCommentsUseCase,
    required this.typeNewCommentUseCase,
    required this.uploadCommentImageUseCase,
    required this.deleteCommentUseCase,
    required this.likeCommentUseCase,
    required this.unLikeCommentUseCase,
    required this.isCommentLikedByMeUseCase,
  }) : super(const CommentsState.initial()) {
    commentController = TextEditingController();
  }

  late final TextEditingController commentController;

  List<CommentModel> comments = <CommentModel>[];

  void streamComments(String tinyTaleId) async {
    emit(const CommentsState.streamCommentsLoading());
    final result = await streamCommentsUseCase(tinyTaleId);
    result.when(
      success: (result) {
        comments = result;
        emit(CommentsState.streamCommentsSuccess(comments));
      },
      error: (error) =>
          emit(CommentsState.streamCommentsError(error.failureMsg ?? '')),
    );
  }

  void Function()? newComment(BuildContext context, String tinyTaleId) {
    return commentImage == null && commentController.text.isEmpty
        ? null
        : () {
            AuthHelper.keyboardUnfocus(context);
            if (commentImage == null && commentController.text.isNotEmpty) {
              _typeNewComment(
                TypeNewCommentParams(
                  context: context,
                  tinyTaleId: tinyTaleId,
                  commentData: CommentData(
                    commentText: commentController.text,
                    date: getDate(),
                    time: DateFormat.jm().format(DateTime.now()),
                  ),
                ),
              );
            } else if (commentImage != null && commentController.text.isEmpty) {
              _uploadCommentImage(
                TypeNewCommentParams(
                  context: context,
                  tinyTaleId: tinyTaleId,
                  commentData: CommentData(
                    date: getDate(),
                    time: DateFormat.jm().format(DateTime.now()),
                  ),
                ),
              );
            } else if (commentImage != null &&
                commentController.text.isNotEmpty) {
              _uploadCommentImage(
                TypeNewCommentParams(
                  context: context,
                  tinyTaleId: tinyTaleId,
                  commentData: CommentData(
                    commentText: commentController.text,
                    date: getDate(),
                    time: DateFormat.jm().format(DateTime.now()),
                  ),
                ),
              );
            }
          };
  }

  void _typeNewComment(TypeNewCommentParams params) async {
    emit(const CommentsState.typeNewCommentLoading());
    final result = await typeNewCommentUseCase(params);
    result.when(
      success: (comment) {
        streamComments(params.tinyTaleId!);
        commentController.clear();
        emit(const CommentsState.typeNewCommentSuccess());
      },
      error: (error) =>
          emit(CommentsState.typeNewCommentError(error.failureMsg ?? '')),
    );
  }

  void deleteComment(DeleteCommentParams params) async {
    emit(const CommentsState.deleteCommentLoading());
    final result = await deleteCommentUseCase(params);
    result.when(
      success: (comment) => emit(const CommentsState.deleteCommentSuccess()),
      error: (error) =>
          emit(CommentsState.deleteCommentError(error.failureMsg ?? '')),
    );
  }

  File? commentImage;

  void pickCommentImage(ImageSource source) async {
    getIt.get<ImagePicker>().pickImage(source: source).then((pickedImage) {
      _updateCommentImage(pickedImage);
    }).catchError((error) {
      emit(CommentsState.pickCommentImageError(error.toString()));
    });
  }

  void _updateCommentImage(XFile? pickedImage) {
    if (pickedImage != null) {
      commentImage = File(pickedImage.path);
      emit(CommentsState.pickCommentImageSuccess(commentImage!));
    }
  }

  void _uploadCommentImage(TypeNewCommentParams params) async {
    emit(const CommentsState.uploadCommentImageLoading());
    final result = await uploadCommentImageUseCase(commentImage!);
    result.when(
      success: (taskSnapshot) => _typeNewCommentWithImage(taskSnapshot, params),
      error: (error) =>
          emit(CommentsState.uploadCommentImageError(error.failureMsg ?? '')),
    );
  }

  void _typeNewCommentWithImage(
      TaskSnapshot taskSnapshot, TypeNewCommentParams params) {
    taskSnapshot.ref.getDownloadURL().then((url) {
      _typeNewComment(
        TypeNewCommentParams(
          tinyTaleId: params.tinyTaleId,
          commentData: CommentData(
            commentImage: url,
            commentText: params.commentData?.commentText,
            date: params.commentData?.date,
            time: params.commentData?.time,
          ),
          context: params.context,
        ),
      );
      removePickedCommentImage();
      emit(CommentsState.uploadCommentImageSuccess(url));
    }).catchError((error) {
      emit(CommentsState.uploadCommentImageError(error.toString()));
    });
  }

  void likeComment(LikeParams params) async {
    final result = await likeCommentUseCase(params);
    result.when(
      success: (_) => emit(const CommentsState.likeCommentSuccess()),
      error: (error) =>
          emit(CommentsState.likeCommentError(error.failureMsg ?? '')),
    );
  }

  void unlikeComment(LikeParams params) async {
    final result = await unLikeCommentUseCase(params);
    result.when(
      success: (_) => emit(const CommentsState.unlikeCommentSuccess()),
      error: (error) =>
          emit(CommentsState.unlikeCommentError(error.failureMsg ?? '')),
    );
  }

  Stream<bool> isCommentLikedByMe(LikeParams params) {
    return isCommentLikedByMeUseCase(params);
  }

  CollectionReference<Map<String, dynamic>> _accessCommentsCollection(
      String tinyTaleId) {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.tinyTalesCollection)
        .doc(tinyTaleId)
        .collection(AppStrings.commentsCollection);
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> commentLikesStream(
    String tinyTaleId,
    String commentId,
  ) {
    return _accessCommentsCollection(tinyTaleId)
        .doc(commentId)
        .collection(AppStrings.commentLikesCollection)
        .snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> commentRepliesStream(
    String tinyTaleId,
    String commentId,
  ) {
    return _accessCommentsCollection(tinyTaleId)
        .doc(commentId)
        .collection(AppStrings.commentReplies)
        .snapshots();
  }

  void removePickedCommentImage() {
    commentImage = null;
    emit(const CommentsState.removePickedCommentImage());
  }

  void setNewTextValue(String text) {
    emit(CommentsState.setNewTextValue(text));
  }

  void handleCommentsState(CommentsState<dynamic> state, BuildContext context) {
    state.whenOrNull(
      typeNewCommentError: (error) {
        ShowICareDialog.show(
          context: context,
          state: ICareDialogStates.error,
          message: error,
        );
      },
      uploadCommentImageError: (error) {
        ShowICareDialog.show(
          context: context,
          state: ICareDialogStates.error,
          message: error,
        );
      },
    );
  }

  @override
  Future<void> close() {
    commentController.dispose();
    return super.close();
  }
}
