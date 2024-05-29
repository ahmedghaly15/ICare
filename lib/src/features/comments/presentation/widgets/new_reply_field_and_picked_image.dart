import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/send_message_text_field.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_cubit.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_state.dart';
import 'package:icare/src/features/comments/presentation/widgets/picked_comment_image.dart';

class NewReplyFieldAndPickedImage extends StatelessWidget {
  const NewReplyFieldAndPickedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentRepliesCubit, CommentRepliesState>(
      buildWhen: (_, current) =>
          current is PickCommentReplyImageSuccess ||
          current is RemovePickedCommentReplyImage,
      builder: (context, state) {
        return Expanded(
          child: Column(
            children: <Widget>[
              SendMessageTextField(
                hintText: AppStrings.writeAReply,
                controller:
                    context.read<CommentRepliesCubit>().commentReplyController,
                onChanged: (String value) {
                  context
                      .read<CommentRepliesCubit>()
                      .setNewTextValue(value.trim());
                },
              ),
              if (context.read<CommentRepliesCubit>().commentReplyImage !=
                  null) ...[
                MySizedBox.height8,
                PickedCommentImage(
                  image: context.read<CommentRepliesCubit>().commentReplyImage!,
                  removeButtonOnPressed: () {
                    context
                        .read<CommentRepliesCubit>()
                        .removePickedCommentReplyImage();
                  },
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
