import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_item.dart';

class CommentsListViewStreamBuilder extends StatelessWidget {
  const CommentsListViewStreamBuilder({
    super.key,
    required this.tinyTaleId,
  });

  final String tinyTaleId;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: context.read<CommentsCubit>().streamComments(tinyTaleId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting &&
              snapshot.data == null) {
            return const Center(
              child: CustomCircularProgressIndicator(),
            );
          }
          final comments = snapshot.data!.docs
              .map((comment) => CommentModel.fromJson(comment.data()))
              .toList();
          return ListView.separated(
            padding: AppConstants.commentsPadding,
            itemBuilder: (context, index) => CommentItem(
              tinyTaleId: tinyTaleId,
              comment: comments[index],
            ),
            itemCount: comments.length,
            separatorBuilder: (context, index) => MySizedBox.height15,
          );
        },);
  }
}
