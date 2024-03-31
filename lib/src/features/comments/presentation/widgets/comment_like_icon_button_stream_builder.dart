import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments_cubit.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

class CommentLikeIconButtonStreamBuilder extends StatelessWidget {
  const CommentLikeIconButtonStreamBuilder({
    super.key,
    required this.commentId,
    required this.tinyTaleId,
  });

  final String tinyTaleId;
  final String? commentId;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: commentId != null
          ? context.read<CommentsCubit>().isCommentLikedByMe(
                LikeParams(
                  tinyTaleId: tinyTaleId,
                  context: context,
                  commentId: commentId,
                ),
              )
          : const Stream<bool>.empty(),
      builder: (context, snapshot) {
        bool isCommentLikedByMe = snapshot.data ?? false;

        return IconButton(
          padding: EdgeInsets.all(6.h),
          onPressed: () {
            isCommentLikedByMe
                ? context.read<CommentsCubit>().unlikeComment(
                      LikeParams(
                        tinyTaleId: tinyTaleId,
                        context: context,
                        commentId: commentId!,
                      ),
                    )
                : context.read<CommentsCubit>().likeComment(
                      LikeParams(
                        tinyTaleId: tinyTaleId,
                        context: context,
                        commentId: commentId!,
                      ),
                    );
          },
          icon: SvgPicture.asset(
            isCommentLikedByMe
                ? AppAssets.svgsRedHeartCommentIcon
                : AppAssets.svgsHeartCommentIcon,
          ),
        );
      },
    );
  }
}
