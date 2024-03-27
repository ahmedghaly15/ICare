import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/frequently_asked_question.dart';

class FrequentlyAskedQuestions extends StatelessWidget {
  const FrequentlyAskedQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      from: 30.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          MySizedBox.height18,
          Text(
            AppStrings.frequentlyAskedQuestions,
            style: AppTextStyles.textStyle20Bold(context),
          ),
          MySizedBox.height18,
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              itemBuilder: (_, index) => FrequentlyAskedQuestion(
                question: context
                    .read<ICareBotCubit>()
                    .frequentlyAskedQuestions[index],
              ),
              separatorBuilder: (_, index) => MySizedBox.height8,
              itemCount:
                  context.read<ICareBotCubit>().frequentlyAskedQuestions.length,
            ),
          ),
        ],
      ),
    );
  }
}
