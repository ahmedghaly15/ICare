import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_replies_state.freezed.dart';

@freezed
class CommentRepliesState<T> with _$CommentRepliesState<T> {
  const factory CommentRepliesState.initial() = _CommentRepliesInitial;
  const factory CommentRepliesState.typeNewCommentReplyLoading() =
      TypeNewCommentReplyLoading;
  const factory CommentRepliesState.typeNewCommentReplySuccess(String reply) =
      TypeNewCommentReplySuccess<T>;
  const factory CommentRepliesState.typeNewCommentReplyError(String error) =
      TypeNewCommentReplyError<T>;
  const factory CommentRepliesState.deleteCommentReplyLoading() =
      DeleteCommentReplyLoading;
  const factory CommentRepliesState.deleteCommentReplySuccess() =
      DeleteCommentReplySuccess<T>;
  const factory CommentRepliesState.deleteCommentReplyError(String error) =
      DeleteCommentReplyError<T>;
  const factory CommentRepliesState.pickCommentReplyImageSuccess(
      File commentImage) = PickCommentReplyImageSuccess<T>;
  const factory CommentRepliesState.pickCommentReplyImageError(String error) =
      PickCommentReplyImageError<T>;
  const factory CommentRepliesState.uploadCommentReplyImageLoading() =
      UploadCommentReplyImageLoading;
  const factory CommentRepliesState.uploadCommentReplyImageSuccess(
      String imageUrl) = UploadCommentReplyImageSuccess<T>;
  const factory CommentRepliesState.uploadCommentReplyImageError(String error) =
      UploadCommentReplyImageError<T>;

  const factory CommentRepliesState.setNewTextValue(String text) =
      SetNewTextValue;
  const factory CommentRepliesState.removePickedCommentReplyImage() =
      RemovePickedCommentReplyImage;
  const factory CommentRepliesState.likeCommentReplySuccess() =
      LikeCommentReplySuccess;
  const factory CommentRepliesState.likeCommentReplyError(String error) =
      LikeCommentReplyError<T>;
  const factory CommentRepliesState.unlikeCommentReplySuccess() =
      UnlikeCommentReplySuccess;
  const factory CommentRepliesState.unlikeCommentReplyError(String error) =
      UnlikeCommentReplyError<T>;
}
