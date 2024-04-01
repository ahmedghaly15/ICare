import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/core/utils/app_assets.dart';

class CommentLikeIconButtonStreamBuilder extends StatelessWidget {
  const CommentLikeIconButtonStreamBuilder({
    super.key,
    required this.stream,
    required this.likeOnPressed,
    required this.unLikeOnPressed,
  });

  final Stream<bool> stream;
  final void Function() likeOnPressed;
  final void Function() unLikeOnPressed;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: stream,
      builder: (context, snapshot) {
        bool isCommentLikedByMe = snapshot.data ?? false;

        return IconButton(
          padding: EdgeInsets.all(6.h),
          onPressed: () {
            isCommentLikedByMe ? unLikeOnPressed() : likeOnPressed();
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
