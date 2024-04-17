import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/gradient_colorful_container.dart';

@RoutePage()
class ScoreView extends StatelessWidget {
  const ScoreView({super.key, required this.level});

  final int level;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: AppConstants.viewAppBarPadding,
              sliver: const CustomSliverAppBar(title: AppStrings.score),
            ),
            SliverFillRemaining(
              child: GradientColorfulContainer(
                padding: EdgeInsets.symmetric(
                  vertical: 20.h,
                  horizontal: 10.w,
                ),
                child: BlocBuilder<SpeechTherapyCubit, SpeechTherapyState>(
                  buildWhen: (_, current) =>
                      current is GetScoreLoading ||
                      current is GetScoreSuccess ||
                      current is GetScoreError,
                  builder: (context, state) {
                    if (state is GetScoreSuccess) {
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0,
                        ),
                        itemBuilder: (context, index) {
                          return AspectRatio(
                            aspectRatio: 1 / 3,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 20.w),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Column(
                                children: <Widget>[
                                  CustomCachedNetworkImage(
                                    imageUrl: state.data.subLevels[index]
                                        .subLevelImageUrl!,
                                    imageBuilder: (_, image) => CircleAvatar(
                                      radius: 30.r,
                                      backgroundImage: image,
                                    ),
                                  ),
                                  MySizedBox.height20,
                                  Text(
                                    '${state.data.subLevels[index].subLevelPercent}%',
                                    style:
                                        AppTextStyles.textStyle25Bold(context)
                                            .copyWith(color: AppColors.brown),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    } else if (state is GetScoreError) {
                      return CustomErrorWidget(
                        error: state.error,
                        tryAgainOnPressed: () =>
                            context.read<SpeechTherapyCubit>().getScore(level),
                      );
                    } else {
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0,
                        ),
                        itemBuilder: (_, __) => const AspectRatio(
                          aspectRatio: 1 / 3,
                          child: ShimmerWidget(
                            circularRadiusVal: 15,
                          ),
                        ),
                        itemCount: 15,
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
