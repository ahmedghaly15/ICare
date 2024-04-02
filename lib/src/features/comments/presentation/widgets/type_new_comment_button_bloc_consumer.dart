import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_send_message_icon_button.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_cubit.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_state.dart';

class TypeNewCommentButtonBlocConsumer extends StatelessWidget {
  const TypeNewCommentButtonBlocConsumer({
    super.key,
    required this.tinyTaleId,
  });

  final String tinyTaleId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CommentsCubit, CommentsState>(
      listenWhen: (_, current) =>
          current is TypeNewCommentError ||
          current is UploadCommentImageError ||
          current is TypeNewCommentSuccess,
      listener: (context, state) {
        context
            .read<CommentsCubit>()
            .handleCommentsState(state, context, tinyTaleId);
      },
      buildWhen: (_, current) =>
          current is TypeNewCommentLoading ||
          current is TypeNewCommentSuccess ||
          current is TypeNewCommentError ||
          current is UploadCommentImageLoading ||
          current is UploadCommentImageSuccess ||
          current is UploadCommentImageError ||
          current is SetNewTextValue ||
          current is PickCommentImageSuccess ||
          current is RemovePickedCommentImage ||
          current is PickCommentImageError,
      builder: (context, state) {
        if (state is TypeNewCommentLoading ||
            state is UploadCommentImageLoading) {
          return const CustomCircularProgressIndicator();
        }
        return CustomSendMessageIconButton(
          isEnabled:
              context.read<CommentsCubit>().commentController.text.isNotEmpty ||
                  context.read<CommentsCubit>().commentImage != null,
          onPressed:
              context.read<CommentsCubit>().newComment(context, tinyTaleId),
        );
      },
    );
  }
}
