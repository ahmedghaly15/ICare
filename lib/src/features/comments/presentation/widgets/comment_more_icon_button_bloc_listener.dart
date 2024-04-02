import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_delete_pop_up_menu_button.dart';
import 'package:icare/src/features/comments/data/models/delete_comment_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_cubit.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_state.dart';

class CommentMoreIconButtonBlocListener extends StatelessWidget {
  const CommentMoreIconButtonBlocListener({
    super.key,
    required this.tinyTaleId,
    required this.commentId,
  });

  final String tinyTaleId, commentId;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CommentsCubit, CommentsState>(
      listenWhen: (_, current) => current is DeleteCommentSuccess,
      listener: (context, state) {
        state.whenOrNull(
          deleteCommentSuccess: () =>
              context.read<CommentsCubit>().streamComments(tinyTaleId),
        );
      },
      child: CustomDeletePopupMenuButton(
        deleteOnPressed: () => context.read<CommentsCubit>().deleteComment(
              DeleteCommentParams(
                tinyTaleId: tinyTaleId,
                commentId: commentId,
              ),
            ),
      ),
    );
  }
}
