import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/get_date.dart';
import 'package:icare/src/features/comments/data/models/comment_data.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/data/models/delete_comment_params.dart';
import 'package:icare/src/features/comments/data/models/type_new_comment_params.dart';
import 'package:icare/src/features/comments/domain/usecases/delete_comment_reply.dart';
import 'package:icare/src/features/comments/domain/usecases/get_comment_replies.dart';
import 'package:icare/src/features/comments/domain/usecases/is_comment_reply_liked_by_me.dart';
import 'package:icare/src/features/comments/domain/usecases/like_comment_reply.dart';
import 'package:icare/src/features/comments/domain/usecases/type_new_comment_reply.dart';
import 'package:icare/src/features/comments/domain/usecases/unlike_comment_reply.dart';
import 'package:icare/src/features/comments/domain/usecases/upload_comment_reply_image.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_state.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class CommentRepliesCubit extends Cubit<CommentRepliesState> {
  final GetCommentRepliesUseCase getCommentRepliesUseCase;
  final TypeNewCommentReplyUseCase typeNewCommentReplyUseCase;
  final UploadCommentReplyImageUseCase uploadCommentReplyImageUseCase;
  final DeleteCommentReplyUseCase deleteCommentReplyUseCase;
  final UnLikeCommentReplyUseCase unlikeCommentReplyUseCase;
  final LikeCommentReplyUseCase likeCommentReplyUseCase;
  final IsCommentReplyLikedByMeUseCase isCommentReplyLikedByMeUseCase;

  CommentRepliesCubit({
    required this.getCommentRepliesUseCase,
    required this.typeNewCommentReplyUseCase,
    required this.uploadCommentReplyImageUseCase,
    required this.deleteCommentReplyUseCase,
    required this.unlikeCommentReplyUseCase,
    required this.likeCommentReplyUseCase,
    required this.isCommentReplyLikedByMeUseCase,
  }) : super(const CommentRepliesState.initial()) {
    commentReplyController = TextEditingController();
  }

  late final TextEditingController commentReplyController;

  void getCommentReplies(CommentRepliesViewParams params) async {
    emit(const CommentRepliesState.getCommentRepliesLoading());
    final result = await getCommentRepliesUseCase(params);
    result.when(
      success: (commentReplies) {
        emit(CommentRepliesState.getCommentRepliesSuccess(commentReplies));
      },
      error: (error) => emit(
          CommentRepliesState.getCommentRepliesError(error.failureMsg ?? '')),
    );
  }

  void Function()? newCommentReply(
    BuildContext context,
    CommentRepliesViewParams params,
  ) {
    return commentReplyImage == null && commentReplyController.text.isEmpty
        ? null
        : () {
            AuthHelper.keyboardUnfocus(context);
            if (commentReplyImage == null &&
                commentReplyController.text.isNotEmpty) {
              _typeNewCommentReply(
                TypeNewCommentParams(
                  tinyTaleId: params.tinyTaleId,
                  commentId: params.comment!.commentId,
                  commentData: CommentData(
                    commentText: commentReplyController.text,
                    date: getDate(),
                    time: DateFormat.jm().format(DateTime.now()),
                  ),
                ),
              );
            } else if (commentReplyImage != null &&
                commentReplyController.text.isEmpty) {
              _uploadCommentReplyImage(
                TypeNewCommentParams(
                  tinyTaleId: params.tinyTaleId,
                  commentId: params.comment!.commentId,
                  commentData: CommentData(
                    date: getDate(),
                    time: DateFormat.jm().format(DateTime.now()),
                  ),
                ),
              );
            } else if (commentReplyImage != null &&
                commentReplyController.text.isNotEmpty) {
              _uploadCommentReplyImage(TypeNewCommentParams(
                tinyTaleId: params.tinyTaleId,
                commentId: params.comment!.commentId,
                commentData: CommentData(
                  commentText: commentReplyController.text,
                  date: getDate(),
                  time: DateFormat.jm().format(DateTime.now()),
                ),
              ));
            }
          };
  }

  void _typeNewCommentReply(TypeNewCommentParams params) async {
    emit(const CommentRepliesState.typeNewCommentReplyLoading());
    final result = await typeNewCommentReplyUseCase(params);
    result.when(
      success: (comment) {
        commentReplyController.clear();
        emit(const CommentRepliesState.typeNewCommentReplySuccess());
      },
      error: (error) => emit(
          CommentRepliesState.typeNewCommentReplyError(error.failureMsg ?? '')),
    );
  }

  void deleteCommentReply(DeleteCommentParams params) async {
    emit(const CommentRepliesState.deleteCommentReplyLoading());
    final result = await deleteCommentReplyUseCase(params);
    result.when(
      success: (comment) =>
          emit(const CommentRepliesState.deleteCommentReplySuccess()),
      error: (error) => emit(
          CommentRepliesState.deleteCommentReplyError(error.failureMsg ?? '')),
    );
  }

  File? commentReplyImage;

  void pickCommentReplyImage(ImageSource source) {
    getIt
        .get<ImagePicker>()
        .pickImage(source: source)
        .then((pickedImage) => _updateCommentReplyImage(pickedImage))
        .catchError(
      (error) {
        emit(CommentRepliesState.pickCommentReplyImageError(error.toString()));
      },
    );
  }

  void _updateCommentReplyImage(XFile? pickedImage) {
    if (pickedImage != null) {
      commentReplyImage = File(pickedImage.path);
      emit(
          CommentRepliesState.pickCommentReplyImageSuccess(commentReplyImage!));
    }
  }

  void _uploadCommentReplyImage(TypeNewCommentParams params) async {
    emit(const CommentRepliesState.uploadCommentReplyImageLoading());

    final result = await uploadCommentReplyImageUseCase(commentReplyImage!);
    result.when(
      success: (taskSnapshot) =>
          _typeNewCommentReplyWithImage(taskSnapshot, params),
      error: (error) => emit(CommentRepliesState.uploadCommentReplyImageError(
          error.failureMsg ?? '')),
    );
  }

  void _typeNewCommentReplyWithImage(
      TaskSnapshot taskSnapshot, TypeNewCommentParams params) {
    taskSnapshot.ref.getDownloadURL().then((url) {
      _typeNewCommentReply(
        TypeNewCommentParams(
          tinyTaleId: params.tinyTaleId,
          commentId: params.commentId,
          commentData: CommentData(
            commentImage: url,
            commentText: params.commentData?.commentText,
            date: params.commentData?.date,
            time: params.commentData?.time,
          ),
        ),
      );
      removePickedCommentReplyImage();
      emit(CommentRepliesState.uploadCommentReplyImageSuccess(url));
    }).catchError((error) {
      emit(CommentRepliesState.uploadCommentReplyImageError(error.toString()));
    });
  }

  void likeCommentReply(LikeParams params) async {
    final result = await likeCommentReplyUseCase(params);
    result.when(
      success: (_) => emit(const CommentRepliesState.likeCommentReplySuccess()),
      error: (error) => emit(
          CommentRepliesState.likeCommentReplyError(error.failureMsg ?? '')),
    );
  }

  void unlikeCommentReply(LikeParams params) async {
    final result = await unlikeCommentReplyUseCase(params);
    result.when(
      success: (_) =>
          emit(const CommentRepliesState.unlikeCommentReplySuccess()),
      error: (error) => emit(
          CommentRepliesState.unlikeCommentReplyError(error.failureMsg ?? '')),
    );
  }

  Stream<bool> isCommentReplyLikedByMe(LikeParams params) {
    return isCommentReplyLikedByMeUseCase(params);
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> commentReplyLikesStream(
    String tinyTaleId,
    String commentId,
    String replyId,
  ) {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.tinyTalesCollection)
        .doc(tinyTaleId)
        .collection(AppStrings.commentsCollection)
        .doc(commentId)
        .collection(AppStrings.commentReplies)
        .doc(replyId)
        .collection(AppStrings.replyLikes)
        .snapshots();
  }

  void setNewTextValue(String text) {
    emit(CommentRepliesState.setNewTextValue(text));
  }

  void removePickedCommentReplyImage() {
    commentReplyImage = null;
    emit(const CommentRepliesState.removePickedCommentReplyImage());
  }

  @override
  Future<void> close() {
    commentReplyController.dispose();
    return super.close();
  }
}
