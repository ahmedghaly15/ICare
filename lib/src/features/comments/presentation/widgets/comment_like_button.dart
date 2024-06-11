import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_like_icon_button_stream_builder.dart';
import 'package:icare/src/features/notifications/data/models/icare_notification.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_cubit.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

class CommentLikeButton extends StatelessWidget {
  const CommentLikeButton({
    super.key,
    required this.comment,
    required this.tinyTaleId,
  });

  final CommentModel comment;
  final String tinyTaleId;

  @override
  Widget build(BuildContext context) {
    return CommentLikeIconButtonStreamBuilder(
      stream: comment.commentId != null
          ? context.read<CommentsCubit>().isCommentLikedByMe(
                LikeParams(
                  tinyTaleId: tinyTaleId,
                  commentId: comment.commentId,
                ),
              )
          : const Stream<bool>.empty(),
      likeOnPressed: () {
        context.read<CommentsCubit>().likeComment(
              LikeParams(
                tinyTaleId: tinyTaleId,
                commentId: comment.commentId!,
              ),
            );
        if (comment.user!.uId != Constants.uId) {
          context.read<NotificationsCubit>().sendNotification(ICareNotification(
                to: comment.user!.mobileToken!,
                body: '${Constants.currentUser!.name} liked your comment',
                receiverId: comment.user!.uId,
                comment: comment,
                tinyTaleId: tinyTaleId,
                user: Constants.currentUser,
              ));
        }
      },
      unLikeOnPressed: () {
        context.read<CommentsCubit>().unlikeComment(
              LikeParams(
                tinyTaleId: tinyTaleId,
                commentId: comment.commentId!,
              ),
            );
      },
    );
  }
}
