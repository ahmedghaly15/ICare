import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales_cubit.dart';

class NewTinyTaleSliverAppBar extends StatelessWidget {
  const NewTinyTaleSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSliverAppBar(
      title: AppStrings.newTinyTale,
      actions: <Widget>[
        TextButton(
          onPressed: context.read<TinyTalesCubit>().publishNewTinyTale(
                const CreateTinyTaleParams(
                  text: 'text',
                  date: 'date',
                  time: 'time',
                ),
              ),
          style: ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.all(8.h)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(24.r)),
              ),
            ),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return AppColors.lightGrey;
                }
                return AppColors.primaryColor;
              },
            ),
            foregroundColor: const MaterialStatePropertyAll(Colors.white),
            textStyle: MaterialStateProperty.resolveWith<TextStyle>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return AppTextStyles.textStyle20Regular(context);
                }
                return AppTextStyles.textStyle20Bold(context);
              },
            ),
          ),
          child: const Text(AppStrings.publish),
        ),
      ],
    );
  }
}
