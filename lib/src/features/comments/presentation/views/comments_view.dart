import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/custom_send_message_icon_button.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/send_message_text_field.dart';
import 'package:icare/src/features/comments/presentation/cubit/comments_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/send_message_field_and_button_bloc_consumer.dart';

@RoutePage()
class CommentsView extends StatelessWidget implements AutoRouteWrapper {
  const CommentsView({super.key, required this.tinyTaleId});

  final String tinyTaleId;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CommentsCubit>(
      create: (_) => getIt.get<CommentsCubit>()..streamComments(tinyTaleId),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(left: 9.w),
              sliver: const CustomSliverAppBar(title: AppStrings.comments),
            ),
            SliverFillRemaining(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.separated(
                      padding:
                          EdgeInsets.symmetric(vertical: 16.h, horizontal: 9.w),
                      itemBuilder: (_, index) => const CommentItem(),
                      itemCount: 10,
                      separatorBuilder: (_, __) => MySizedBox.height18,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.w,
                      right: 8.w,
                      bottom: SizeConfig.height * 0.05,
                      top: 8.h,
                    ),
                    child: Row(
                      children: [
                        SendMessageTextField(
                          hintText: AppStrings.writeAComment,
                          controller: TextEditingController(),
                        ),
                        SizedBox.square(dimension: 8.h),
                        const CustomSendMessageIconButton(isEnabled: true),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommentItem extends StatelessWidget {
  const CommentItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: CustomCachedNetworkImage(
            imageUrl:
                'https://hackspirit.com/wp-content/uploads/2021/06/Copy-of-Rustic-Female-Teen-Magazine-Cover.jpg',
            imageBuilder: (_, image) => CircleAvatar(
              radius: 20.h,
              backgroundImage: image,
            ),
          ),
        ),
        MySizedBox.width6,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 6.h,
                horizontal: 15.w,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: AppColors.lightGrey2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'AHNED',
                    style: AppTextStyles.textStyle18Bold(context),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  MySizedBox.height7,
                  Text(
                    'fdfdsfdsdfdsf',
                    style: AppTextStyles.textStyle16Regular(context),
                  ),
                  MySizedBox.height12,
                  Text(
                    'Mar 10, 2022 at 5:20 AM',
                    style: AppTextStyles.textStyle13Regular(context)
                        .copyWith(color: Colors.grey.shade400),
                  ),
                ],
              ),
            ),
            MySizedBox.height2,
            Row(
              children: <Widget>[
                MySizedBox.width10,
                IconButton(
                  padding: EdgeInsets.all(6.h),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppAssets.svgsHeartCommentIcon,
                  ),
                ),
                Text(
                  '12',
                  style: AppTextStyles.textStyle13Regular(context).copyWith(
                    color: AppColors.darkGrey,
                  ),
                ),
                MySizedBox.width10,
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(6.h),
                    foregroundColor: AppColors.darkGrey,
                    textStyle: AppTextStyles.textStyle13Bold(context),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: Size.zero,
                  ),
                  onPressed: () {
                    // TODO: go to RepliesView & handle type reply
                  },
                  child: const Text('Reply'),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
