import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_cubit.dart';

class FrequentlyAskedQuestion extends StatelessWidget {
  const FrequentlyAskedQuestion({
    super.key,
    required this.question,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<ICareBotCubit>().setNewTextValue(question);
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(8.h),
        backgroundColor: AppColors.lightGrey3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.r)),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: 0,
      ),
      child: Text(
        question,
        style: AppTextStyles.textStyle14Medium(context)
            .copyWith(color: Colors.black),
      ),
    );
  }
}
