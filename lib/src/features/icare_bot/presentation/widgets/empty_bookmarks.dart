import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class EmptyBookmarks extends StatelessWidget {
  const EmptyBookmarks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        FadeInDown(
          child: SvgPicture.asset(AppAssets.svgsEmptyBookmarks),
        ),
        MySizedBox.height25,
        FadeInUp(
          child: Text(
            AppStrings.noBookmarksSavedYet,
            style: AppTextStyles.textStyle20Bold(context),
          ),
        ),
      ],
    );
  }
}
