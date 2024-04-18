import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_training_response.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/gradient_colorful_container.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/levels_list.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/score_button.dart';

@RoutePage()
class AdvancedLevelView extends StatelessWidget {
  const AdvancedLevelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: AppConstants.viewAppBarPadding,
              sliver: const CustomSliverAppBar(title: AppStrings.advancedLevel),
            ),
            SliverFillRemaining(
              child: GradientColorfulContainer(
                radiusVal: 50,
                child: BlocBuilder<SpeechTherapyCubit, SpeechTherapyState>(
                  buildWhen: (_, current) =>
                      current is GetAdvancedLevelTrainingDataLoading ||
                      current is GetAdvancedLevelTrainingDataSuccess ||
                      current is GetAdvancedLevelTrainingDataError,
                  builder: (context, state) {
                    if (state is GetAdvancedLevelTrainingDataSuccess) {
                      return Column(
                        children: <Widget>[
                          Expanded(
                            child: ListView.separated(
                              padding: EdgeInsets.zero,
                              itemBuilder: (context, index) {
                                return index % 2 == 0
                                    ? SlideInRight(
                                        from: 250.w,
                                        child: SurahItem(
                                            surahDetails:
                                                state.data[index].details),
                                      )
                                    : SlideInLeft(
                                        from: 250.w,
                                        child: SurahItem(
                                            surahDetails:
                                                state.data[index].details),
                                      );
                              },
                              separatorBuilder: (_, __) => MySizedBox.height25,
                              itemCount: state.data.length,
                            ),
                          ),
                          MySizedBox.height27,
                          ScoreButton(
                            onPressed: () {},
                          ),
                        ],
                      );
                    } else if (state is GetAdvancedLevelTrainingDataError) {
                      return CustomErrorWidget(
                        error: state.error,
                        tryAgainOnPressed: () => context
                            .read<SpeechTherapyCubit>()
                            .getAdvancedLevelTrainingData(),
                      );
                    } else {
                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        itemBuilder: (_, __) => ShimmerWidget(
                          circularRadiusVal: 50,
                          height: SizeConfig.height * 0.15,
                          width: double.infinity,
                        ),
                        separatorBuilder: (_, __) => MySizedBox.height25,
                        itemCount: 10,
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

class SurahItem extends StatelessWidget {
  const SurahItem({
    super.key,
    required this.surahDetails,
  });

  final AdvancedLevelTrainingDetails surahDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0, 2.h),
            blurRadius: 12.r,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.08),
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: () {},
        padding: EdgeInsets.symmetric(
          vertical: 24.h,
          horizontal: 16.w,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(surahDetails.surahNameEn,
                    style: AppTextStyles.textStyle18Bold(context)),
                MySizedBox.height12,
                Row(
                  children: <Widget>[
                    SurahInfoContainer(
                      icon: AppAssets.svgsMakiyyahIcon,
                      label: surahDetails.typeEn,
                    ),
                    MySizedBox.width15,
                    SurahInfoContainer(
                      icon: AppAssets.svgsBookIcon,
                      label: '${surahDetails.ayahsNum} Ayat',
                    ),
                  ],
                ),
              ],
            ),
            // Spacer(),
            Text(
              surahDetails.surahNameAr,
              style: AppTextStyles.textStyle20Bold(context).copyWith(
                fontFamily: AppStrings.readexProFontFamily,
              ),
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}

class SurahInfoContainer extends StatelessWidget {
  const SurahInfoContainer({
    super.key,
    required this.icon,
    required this.label,
  });

  final String icon, label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(icon),
          MySizedBox.width6,
          Text(
            label,
            style: AppTextStyles.textStyle13Regular(context).copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
