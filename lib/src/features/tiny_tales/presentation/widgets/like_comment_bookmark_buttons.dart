import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/book_mark_icon_button_bloc_listener.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/first_three_like_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_like_button_bloc_listener.dart';

class LikeCommentBookmarkButtons extends StatelessWidget {
  const LikeCommentBookmarkButtons({
    super.key,
    this.isTinyTaleContainsImage = false,
    required this.tinyTale,
  });

  final bool isTinyTaleContainsImage;
  final TinyTale tinyTale;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          onPressed: () {
            context.pushRoute(CommentsRoute(tinyTaleId: tinyTale.tinyTaleId!));
          },
          icon: SvgPicture.asset(
            isDarkModeActive(context)
                ? AppAssets.svgsCommentIcon
                : (isTinyTaleContainsImage
                    ? AppAssets.svgsCommentIcon
                    : AppAssets.svgsBlackCommentIcon),
          ),
        ),
        StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: context
              .read<TinyTalesCubit>()
              .commentsStream(tinyTale.tinyTaleId!),
          builder: (context, snapshot) {
            int commentsCount = snapshot.data?.docs.length ?? 0;

            return Text(
              '$commentsCount',
              style: AppTextStyles.textStyle13Bold.copyWith(
                color: isDarkModeActive(context)
                    ? AppColors.white80Percent
                    : (isTinyTaleContainsImage
                        ? AppColors.white80Percent
                        : AppColors.black80Percent),
              ),
            );
          },
        ),
        MySizedBox.width6,
        TinyTaleLikeButtonBlocListener(
          tinyTaleId: tinyTale.tinyTaleId,
          isTinyTaleContainsImage: isTinyTaleContainsImage,
        ),
        StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream:
              context.read<TinyTalesCubit>().likesStream(tinyTale.tinyTaleId!),
          builder: (context, snapshot) {
            int likesCount = snapshot.data?.docs.length ?? 0;

            return Text(
              '$likesCount',
              style: AppTextStyles.textStyle13Bold.copyWith(
                color: isDarkModeActive(context)
                    ? AppColors.white80Percent
                    : (isTinyTaleContainsImage
                        ? AppColors.white80Percent
                        : AppColors.black80Percent),
              ),
            );
          },
        ),
        MySizedBox.width10,
        FirstThreeLikeTinyTale(tinyTaleId: tinyTale.tinyTaleId),
        MySizedBox.width10,
        const Spacer(),
        BookmarkIconButtonBlocListener(
          tinyTale: tinyTale,
          isTinyTaleContainsImage: isTinyTaleContainsImage,
        ),
      ],
    );
  }
}
