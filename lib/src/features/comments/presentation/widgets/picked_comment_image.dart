import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/remove_picked_image_icon_button.dart';

class PickedCommentImage extends StatelessWidget {
  const PickedCommentImage({
    super.key,
    required this.image,
    required this.removeButtonOnPressed,
  });

  final File image;
  final VoidCallback removeButtonOnPressed;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      from: 30.h,
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: <Widget>[
          Container(
            height: 120.h,
            margin: EdgeInsets.only(
              right: 8.w,
              bottom: 8.h,
            ),
            width: double.infinity,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8.r),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: FileImage(image),
              ),
            ),
          ),
          RemovePickedImageIconButton(
            onPressed: removeButtonOnPressed,
          ),
        ],
      ),
    );
  }
}
