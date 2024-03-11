import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/features/cry_translator/presentation/cubit/cry_translator_cubit.dart';

class CustomRecordButton extends StatelessWidget {
  const CustomRecordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 100.h,
      width: 100.w,
      duration: AppConstants.cryTranslatorAnimationDuration,
      padding: EdgeInsets.all(
        context.read<CryTranslatorCubit>().isRecording ? 25.h : 15.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.primaryColor,
          width: context.read<CryTranslatorCubit>().isRecording ? 8.sp : 3.sp,
        ),
      ),
      child: AnimatedContainer(
        duration: AppConstants.cryTranslatorAnimationDuration,
        height: 70.h,
        width: 70.h,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          shape: context.read<CryTranslatorCubit>().isRecording
              ? BoxShape.rectangle
              : BoxShape.circle,
        ),
        child: MaterialButton(
          onPressed: () {
            if (context.read<CryTranslatorCubit>().isRecording) {
              context.read<CryTranslatorCubit>().countDownController.dispose();
              context.read<CryTranslatorCubit>().stopRecording();
            } else {
              context.read<CryTranslatorCubit>().startTimer();
              context.read<CryTranslatorCubit>().startRecording();
            }
            context.read<CryTranslatorCubit>().convertIsRecording();
          },
          shape: const CircleBorder(),
          child: const SizedBox.shrink(),
        ),
      ),
    );
  }
}
