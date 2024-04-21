import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_training_response.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_state.dart';

class AyahItem extends StatelessWidget {
  const AyahItem({
    super.key,
    required this.ayah,
  });

  final Ayah ayah;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LevelTrainingCubit, LevelTrainingState>(
      buildWhen: (_, state) => state is ConvertIsAnAdvancedItemSelected,
      builder: (context, state) {
        return TweenAnimationBuilder(
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeInOut,
          tween: Tween<double>(
            begin: 0.0,
            end: context.read<LevelTrainingCubit>().isAnAdvancedItemSelected
                ? 10.0.w
                : 0.0,
          ),
          builder: (context, double shadow, child) {
            return TweenAnimationBuilder(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              tween: Tween<double>(
                begin: 0.0,
                end: context.read<LevelTrainingCubit>().isAnAdvancedItemSelected
                    ? 10.0.h
                    : 0.0,
              ),
              builder: (context, double translateY, child) {
                return Transform.translate(
                  offset: Offset(0.0, -translateY),
                  child: Container(
                    decoration: BoxDecoration(
                      color: isDarkModeActive(context)
                          ? AppColors.scaffoldDarkModeBackgroundColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(25.r),
                      boxShadow: context
                                  .read<LevelTrainingCubit>()
                                  .selectedAyah
                                  ?.ayahAr ==
                              ayah.ayahAr
                          ? <BoxShadow>[
                              BoxShadow(
                                offset: Offset(0, 2.h),
                                blurRadius: shadow,
                                spreadRadius: 1.w,
                                color: isDarkModeActive(context)
                                    ? Colors.black.withOpacity(0.4)
                                    : const Color(0xff101032).withOpacity(0.25),
                              ),
                            ]
                          : null,
                    ),
                    margin: EdgeInsets.only(bottom: 16.h),
                    child: MaterialButton(
                      onPressed: () => context
                          .read<LevelTrainingCubit>()
                          .updateSelectedAyah(ayah),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                        horizontal: 16.w,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              ayah.ayahAr,
                              style: AppTextStyles.textStyle24Regular.copyWith(
                                color: AppColors.primaryColor,
                                fontFamily: AppStrings.lateefFontFamily,
                              ),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          MySizedBox.height12,
                          Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              ayah.ayahEn,
                              style: AppTextStyles.textStyle13Regular,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
