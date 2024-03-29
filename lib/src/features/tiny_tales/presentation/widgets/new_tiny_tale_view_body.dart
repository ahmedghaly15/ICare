import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/add_photo_text_button.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/new_tiny_tale_image.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/new_tiny_tale_sliver_app_bar.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/user_name_and_image.dart';

class NewTinyTaleViewBody extends StatelessWidget {
  const NewTinyTaleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 9.w),
            sliver: const NewTinyTaleSliverAppBar(),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              top: 32.h,
              right: 16.w,
              left: 16.w,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  const UsernameAndImage(),
                  CustomTextFormField(
                    maxLines: null,
                    controller: context
                        .read<TinyTalesCubit>()
                        .createNewTinyTaleController,
                    hintText:
                        "What's in your mind, ${Helper.currentUser!.name!.split(' ')[0]}",
                    enableSuggestions: true,
                    contentPadding: EdgeInsets.zero,
                    filled: false,
                    textCapitalization: TextCapitalization.sentences,
                    keyboardType: TextInputType.multiline,
                    border: InputBorder.none,
                    onChanged: (String value) => context
                        .read<TinyTalesCubit>()
                        .setNewTinyTaleText(value),
                  ),
                  MySizedBox.height10,
                  // const NewTinyTaleImage(),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              bottom: 32.h,
              right: 16.w,
              left: 16.w,
              top: 12.h,
            ),
            sliver: const SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  Spacer(),
                  AddPhotoTextButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
