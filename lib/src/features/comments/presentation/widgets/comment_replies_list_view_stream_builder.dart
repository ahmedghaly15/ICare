import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_reply_item.dart';

class CommentRepliesListViewStreamBuilder extends StatelessWidget {
  const CommentRepliesListViewStreamBuilder({
    super.key,
    required this.params,
  });

  final CommentRepliesViewParams params;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: context.read<CommentRepliesCubit>().streamCommentReplies(params),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting &&
            snapshot.data == null) {
          return const Center(
            child: CustomCircularProgressIndicator(),
          );
        }
        final commentReplies = snapshot.data!.docs
            .map((commentReply) => CommentModel.fromJson(commentReply.data()))
            .toList();
        return ListView.separated(
          padding: AppConstants.commentsPadding,
          itemBuilder: (context, index) => CommentReplyItem(
            reply: commentReplies[index],
            params: params,
          ),
          separatorBuilder: (_, __) => MySizedBox.height15,
          itemCount: commentReplies.length,
        );
      },
    );
  }
}
