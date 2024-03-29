import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/like_comment_bookmark_buttons.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_image.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_item_upper_section.dart';

class TinyTaleItem extends StatelessWidget {
  const TinyTaleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40.r)),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2.r,
            blurRadius: 5.r,
            offset: Offset(0, 3.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const TinyTaleItemUpperSection(),
          MySizedBox.height10,
          Linkify(
            text: 'Welcome to ICare',
            style: AppTextStyles.textStyle18Regular(context),
            onOpen: (link) => context.read<TinyTalesCubit>().openUrl(link),
          ),
          MySizedBox.height10,
          const TinyTaleItemImage(),
          // const LikeCommentBookmarkButtons(
          //   isTinyTaleContainsImage: true,
          // ),
        ],
      ),
    );
  }
}
