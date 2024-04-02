import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_item_content.dart';
import 'package:icare/src/features/comments/presentation/widgets/like_and_reply_buttons.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_more_icon_button_bloc_listener.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({
    super.key,
    required this.comment,
    required this.tinyTaleId,
  });

  final CommentModel comment;
  final String tinyTaleId;

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
            imageUrl: comment.user!.profileImage!,
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
            CommentItemContent(comment: comment),
            MySizedBox.height2,
            LikeAndReplyButtons(
              commentId: comment.commentId,
              tinyTaleId: tinyTaleId,
            ),
          ],
        ),
        Flexible(
          child: CommentMoreIconButtonBlocListener(
            tinyTaleId: tinyTaleId,
            commentId: comment.commentId!,
          ),
        ),
      ],
    );
  }
}
