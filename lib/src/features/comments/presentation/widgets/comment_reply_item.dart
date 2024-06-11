import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/utils/functions/navigate_to_user_profile.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_item_content.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_reply_like_button.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_reply_more_icon_button_bloc_listener.dart';
import 'package:icare/src/features/comments/presentation/widgets/query_snapshot_text_stream_builder.dart';

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
            navigateToUserProfile(
              context: context,
              user: reply.user!,
            );
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
                CommentReplyLikeButton(reply: reply, params: params),
                QuerySnapshotTextStreamBuilder(
                  stream: context
                      .read<CommentRepliesCubit>()
                      .commentReplyLikesStream(
                        params.tinyTaleId!,
                        params.comment!.commentId,
                        reply.commentId,
                      ),
                ),
              ],
            ),
          ],
        ),
        if (reply.user!.uId == Constants.uId)
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
