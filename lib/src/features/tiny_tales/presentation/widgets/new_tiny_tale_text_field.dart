import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/new_tiny_tale/new_tiny_tale_cubit.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';
import 'package:icare/src/features/user/presentation/cubit/user_state.dart';

class NewTinyTaleTextField extends StatelessWidget {
  const NewTinyTaleTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is GetUserDataLoading) {
          return ShimmerWidget(
            height: 20.h,
            width: double.infinity,
          );
        }
        return CustomTextFormField(
          hintStyle: AppTextStyles.textStyle16Regular.copyWith(
            color: Colors.grey,
          ),
          autofocus: true,
          style: AppTextStyles.textStyle20Regular,
          maxLines: null,
          controller:
              context.read<NewTinyTaleCubit>().createNewTinyTaleController,
          hintText:
              "What's in your mind, ${Helper.currentUser!.name!.split(' ')[0]}",
          enableSuggestions: true,
          contentPadding: EdgeInsets.zero,
          filled: false,
          textCapitalization: TextCapitalization.sentences,
          keyboardType: TextInputType.multiline,
          border: InputBorder.none,
          onChanged: (String value) =>
              context.read<NewTinyTaleCubit>().setNewTinyTaleText(value),
        );
      },
    );
  }
}
