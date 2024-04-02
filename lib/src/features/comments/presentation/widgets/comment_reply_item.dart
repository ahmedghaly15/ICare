import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_item_content.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_like_icon_button_stream_builder.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_reply_more_icon_button_bloc_listener.dart';
import 'package:icare/src/features/comments/presentation/widgets/query_snapshot_text_stream_builder.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

class CommentReplyItem extends StatelessWidget {
  const CommentReplyItem({
    super.key,
    required this.reply,
    required this.params,
  });

  final CommentModel reply;
  final CommentRepliesViewParams params;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        InkWell(
          onTap: () {
            // TODO: navigate to user profile
          },
          child: CustomCachedNetworkImage(
            imageUrl: reply.user!.profileImage!,
            imageBuilder: (_, image) => CircleAvatar(
              radius: 20.h,
              backgroundImage: image,
            ),
          ),
        ),
        MySizedBox.width6,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CommentItemContent(comment: reply),
            MySizedBox.height2,
            Row(
              children: <Widget>[
                MySizedBox.width10,
                CommentLikeIconButtonStreamBuilder(
                  stream: reply.commentId != null
                      ? context
                          .read<CommentRepliesCubit>()
                          .isCommentReplyLikedByMe(
                            LikeParams(
                              tinyTaleId: params.tinyTaleId!,
                              context: context,
                              commentId: params.commentId,
                              replyId: reply.commentId,
                            ),
                          )
                      : const Stream<bool>.empty(),
                  likeOnPressed: () {
                    context.read<CommentRepliesCubit>().likeCommentReply(
                          LikeParams(
                            tinyTaleId: params.tinyTaleId!,
                            commentId: params.commentId,
                            context: context,
                            replyId: reply.commentId,
                          ),
                        );
                  },
                  unLikeOnPressed: () {
                    context.read<CommentRepliesCubit>().unlikeCommentReply(
                          LikeParams(
                            tinyTaleId: params.tinyTaleId!,
                            commentId: params.commentId,
                            context: context,
                            replyId: reply.commentId,
                          ),
                        );
                  },
                ),
                QuerySnapshotTextStreamBuilder(
                  stream: context
                      .read<CommentRepliesCubit>()
                      .commentReplyLikesStream(
                        params.tinyTaleId!,
                        params.commentId!,
                        reply.commentId!,
                      ),
                ),
              ],
            ),
          ],
        ),
        Flexible(
          child: CommentReplyMoreIconButtonBlocListener(
            params: params,
            reply: reply,
          ),
        ),
      ],
    );
  }
}
