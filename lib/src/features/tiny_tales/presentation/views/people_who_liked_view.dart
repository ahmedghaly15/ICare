import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_state.dart';

@RoutePage()
class PeopleWhoLikedView extends StatelessWidget {
  const PeopleWhoLikedView({super.key, required this.tinyTaleId});

  final String tinyTaleId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: AppConstants.scrollPhysics,
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(left: 9.w),
              sliver:
                  const CustomSliverAppBar(title: AppStrings.peopleWhoLiked),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                vertical: 16.h,
                horizontal: 9.w,
              ),
              sliver: BlocBuilder<TinyTalesCubit, TinyTalesState>(
                buildWhen: (_, current) =>
                    current is GetPeopleWhoLikedLoading ||
                    current is GetPeopleWhoLikedSuccess ||
                    current is GetPeopleWhoLikedError,
                builder: (context, state) {
                  if (state is GetPeopleWhoLikedSuccess) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => FadeInLeft(
                          child: PersonWhoLikedListTile(
                            person: state.peopleWhoLiked[index],
                          ),
                        ),
                        childCount: state.peopleWhoLiked.length,
                      ),
                    );
                  } else if (state is GetPeopleWhoLikedError) {
                    return SliverFillRemaining(
                      hasScrollBody: false,
                      child: CustomErrorWidget(
                        error: state.error,
                        tryAgainOnPressed: () => context
                            .read<TinyTalesCubit>()
                            .getPeopleWhoLiked(tinyTaleId),
                      ),
                    );
                  } else {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => LoadingPersonWhoLikedItem(
                            isEvenItem: index % 2 == 0),
                        childCount: 10,
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingPersonWhoLikedItem extends StatelessWidget {
  const LoadingPersonWhoLikedItem({super.key, required this.isEvenItem});

  final bool isEvenItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: Row(
        children: <Widget>[
          ShimmerWidget(
            height: 40.h,
            width: 40.w,
            shape: BoxShape.circle,
          ),
          MySizedBox.width10,
          ShimmerWidget(
            height: 16.h,
            width: isEvenItem ? SizeConfig.width * 0.4 : SizeConfig.width * 0.3,
          ),
        ],
      ),
    );
  }
}

class PersonWhoLikedListTile extends StatelessWidget {
  const PersonWhoLikedListTile({
    super.key,
    required this.person,
  });

  final ICareUser person;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: ListTile(
        onTap: () {},
        leading: IntrinsicWidth(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              CustomCachedNetworkImage(
                imageUrl: person.profileImage!,
                imageBuilder: (_, image) {
                  return CircleAvatar(
                    radius: 18.r,
                    backgroundImage: image,
                  );
                },
              ),
              CircleAvatar(
                radius: 9.r,
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  AppAssets.svgsRedHeartCommentIcon,
                  height: 10.h,
                  width: 10.w,
                ),
              ),
            ],
          ),
        ),
        title: Text(
          person.name!,
          style: AppTextStyles.textStyle18Bold(context),
        ),
      ),
    );
  }
}
