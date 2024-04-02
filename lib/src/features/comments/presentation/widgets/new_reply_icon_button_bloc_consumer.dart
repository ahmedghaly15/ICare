import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_send_message_icon_button.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_cubit.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_state.dart';

class NewReplyIconButtonBlocConsumer extends StatelessWidget {
  const NewReplyIconButtonBlocConsumer({
    super.key,
    required this.params,
  });

  final CommentRepliesViewParams params;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CommentRepliesCubit, CommentRepliesState>(
      listenWhen: (_, current) =>
          current is TypeNewCommentReplyError ||
          current is UploadCommentReplyImageError ||
          current is TypeNewCommentReplySuccess,
      listener: (context, state) {
        context
            .read<CommentRepliesCubit>()
            .handleCommentRepliesState(state, context, params);
      },
      buildWhen: (_, current) =>
          current is TypeNewCommentReplyLoading ||
          current is TypeNewCommentReplySuccess ||
          current is TypeNewCommentReplyError ||
          current is UploadCommentReplyImageLoading ||
          current is UploadCommentReplyImageSuccess ||
          current is UploadCommentReplyImageError ||
          current is SetNewTextValue ||
          current is PickCommentReplyImageSuccess ||
          current is PickCommentReplyImageError ||
          current is RemovePickedCommentReplyImage,
      builder: (context, state) {
        if (state is TypeNewCommentReplyLoading ||
            state is UploadCommentReplyImageLoading) {
          return const CustomCircularProgressIndicator();
        }
        return CustomSendMessageIconButton(
          isEnabled: context
                  .read<CommentRepliesCubit>()
                  .commentReplyController
                  .text
                  .isNotEmpty ||
              context.read<CommentRepliesCubit>().commentReplyImage != null,
          onPressed: context
              .read<CommentRepliesCubit>()
              .newCommentReply(context, params),
        );
      },
    );
  }
}
