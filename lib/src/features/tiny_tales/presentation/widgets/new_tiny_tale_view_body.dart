import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/add_photo_text_button.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/linear_progress_indicator_bloc_builder.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/new_tiny_tale_image_bloc_builder.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/new_tiny_tale_sliver_app_bar.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/new_tiny_tale_text_field.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/current_user_name_and_image.dart';

class NewTinyTaleViewBody extends StatelessWidget {
  const NewTinyTaleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.w),
        child: CustomScrollView(
          slivers: [
            const NewTinyTaleSliverAppBar(),
            SliverPadding(
              padding: EdgeInsets.only(top: 24.h),
              sliver: const SliverToBoxAdapter(
                child: Column(
                  children: <Widget>[
                    LinearProgressIndicatorBlocBuilder(),
                    CurrentUsernameAndImage(),
                    NewTinyTaleTextField(),
                    MySizedBox.height10,
                    NewTinyTaleImageBlocBuilder(),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                bottom: 32.h,
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
      ),
    );
  }
}
