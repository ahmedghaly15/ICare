import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_delete_pop_up_menu_button.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/data/models/delete_comment_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_cubit.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_state.dart';

class CommentReplyMoreIconButtonBlocListener extends StatelessWidget {
  const CommentReplyMoreIconButtonBlocListener({
    super.key,
    required this.params,
    required this.reply,
  });

  final CommentRepliesViewParams params;
  final CommentModel reply;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CommentRepliesCubit, CommentRepliesState>(
      listenWhen: (_, current) => current is DeleteCommentReplySuccess,
      listener: (context, state) {
        state.whenOrNull(
          deleteCommentReplySuccess: () =>
              context.read<CommentRepliesCubit>().getCommentReplies(params),
        );
      },
      child: CustomDeletePopupMenuButton(
        deleteOnPressed: () =>
            context.read<CommentRepliesCubit>().deleteCommentReply(
                  DeleteCommentParams(
                    tinyTaleId: params.tinyTaleId!,
                    commentId: params.commentId,
                    commentReplyId: reply.commentId,
                  ),
                ),
      ),
    );
  }
}
