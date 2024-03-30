import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/new_tiny_tale/new_tiny_tale_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/new_tiny_tale/new_tiny_tale_state.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';

class NewTinyTaleTextFieldBlocBuilder extends StatelessWidget {
  const NewTinyTaleTextFieldBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewTinyTaleCubit, NewTinyTaleState>(
      buildWhen: (_, current) => current is SetNewTextValue,
      builder: (context, state) {
        return CustomTextFormField(
          hintStyle: AppTextStyles.textStyle20Regular(context).copyWith(
            color: Colors.grey,
          ),
          style: AppTextStyles.textStyle20Regular(context),
          maxLines: null,
          controller:
              context.read<NewTinyTaleCubit>().createNewTinyTaleController,
          hintText:
              "What's in your mind, ${context.read<UserCubit>().currentUser!.name!.split(' ')[0]}",
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
