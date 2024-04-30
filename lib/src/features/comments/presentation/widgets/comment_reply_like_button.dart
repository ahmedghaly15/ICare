import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_like_icon_button_stream_builder.dart';
import 'package:icare/src/features/notifications/data/models/send_notification_params.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_cubit.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

class CommentReplyLikeButton extends StatelessWidget {
  const CommentReplyLikeButton({
    super.key,
    required this.reply,
    required this.params,
  });

  final CommentModel reply;
  final CommentRepliesViewParams params;

  @override
  Widget build(BuildContext context) {
    return CommentLikeIconButtonStreamBuilder(
      stream: reply.commentId != null
          ? context.read<CommentRepliesCubit>().isCommentReplyLikedByMe(
                LikeParams(
                  tinyTaleId: params.tinyTaleId!,
                  commentId: params.comment!.commentId,
                  replyId: reply.commentId,
                ),
              )
          : const Stream<bool>.empty(),
      likeOnPressed: () {
        context.read<CommentRepliesCubit>().likeCommentReply(
              LikeParams(
                tinyTaleId: params.tinyTaleId!,
                commentId: params.comment!.commentId,
                replyId: reply.commentId,
              ),
            );
        if (reply.user!.uId != Helper.uId) {
          context
              .read<NotificationsCubit>()
              .sendNotification(SendNotificationParams(
                to: reply.user!.mobileToken!,
                body: '${Helper.currentUser!.name} liked your reply',
                receiverId: reply.user!.uId,
              ));
        }
      },
      unLikeOnPressed: () {
        context.read<CommentRepliesCubit>().unlikeCommentReply(
              LikeParams(
                tinyTaleId: params.tinyTaleId!,
                commentId: params.comment!.commentId,
                replyId: reply.commentId,
              ),
            );
      },
    );
  }
}
