import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';

part 'comments_state.freezed.dart';

@freezed
class CommentsState<T> with _$CommentsState<T> {
  const factory CommentsState.initial() = _CommentsInitial;
  const factory CommentsState.streamCommentsLoading() = StreamCommentsLoading;
  const factory CommentsState.streamCommentsSuccess(
      List<CommentModel> comments) = StreamCommentsSuccess<T>;
  const factory CommentsState.streamCommentsError(String error) =
      StreamCommentsError<T>;
  const factory CommentsState.typeNewCommentLoading() = TypeNewCommentLoading;
  const factory CommentsState.typeNewCommentSuccess() =
      TypeNewCommentSuccess<T>;
  const factory CommentsState.typeNewCommentError(String error) =
      TypeNewCommentError<T>;
  const factory CommentsState.pickCommentImageSuccess(File commentImage) =
      PickCommentImageSuccess<T>;
  const factory CommentsState.pickCommentImageError(String error) =
      PickCommentImageError<T>;
  const factory CommentsState.uploadCommentImageLoading() =
      UploadCommentImageLoading;
  const factory CommentsState.uploadCommentImageSuccess(String imageUrl) =
      UploadCommentImageSuccess<T>;
  const factory CommentsState.uploadCommentImageError(String error) =
      UploadCommentImageError<T>;
  const factory CommentsState.deleteCommentLoading() = DeleteCommentLoading;
  const factory CommentsState.deleteCommentSuccess() = DeleteCommentSuccess<T>;
  const factory CommentsState.deleteCommentError(String error) =
      DeleteCommentError<T>;
  const factory CommentsState.setNewTextValue(String text) = SetNewTextValue;
  const factory CommentsState.removePickedCommentImage() =
      RemovePickedCommentImage;
  const factory CommentsState.likeCommentSuccess() = LikeCommentSuccess;
  const factory CommentsState.likeCommentError(String error) = LikeCommentError;
  const factory CommentsState.unlikeCommentSuccess() = UnlikeCommentSuccess;
  const factory CommentsState.unlikeCommentError(String error) =
      UnlikeCommentError;
}
