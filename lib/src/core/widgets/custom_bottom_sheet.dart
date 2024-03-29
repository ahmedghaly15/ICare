import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';

class ShowCustomImageBottomSheet {
  static void show({
    required BuildContext context,
    required void Function()? onPressedGallery,
    required void Function()? onPressedCamera,
    required String type,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (context) => CustomImageBottomSheet(
        type: type,
        onPressedCamera: onPressedCamera,
        onPressedGallery: onPressedGallery,
      ),
    );
  }
}

class CustomImageBottomSheet extends StatelessWidget {
  const CustomImageBottomSheet({
    super.key,
    this.onPressedGallery,
    this.onPressedCamera,
    required this.type,
  });

  final void Function()? onPressedGallery;
  final void Function()? onPressedCamera;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: BottomSheet(
        enableDrag: true,
        onClosing: () => context.maybePop(),
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(bottom: 25.h, top: 20.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Pick $type Picture",
                  style: AppTextStyles.textStyle18Bold(context),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ImageCircle(
                      onPressed: onPressedGallery,
                      icon: AppAssets.imagesAddImage,
                    ),
                    ImageCircle(
                      onPressed: onPressedCamera,
                      icon: AppAssets.imagesCamera,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ImageCircle extends StatelessWidget {
  const ImageCircle({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final String icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 16.h,
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        fixedSize: Size(150.w, 130.h),
      ),
      child: Image.asset(
        icon,
        width: 180.w,
        height: 100.h,
      ),
    );
  }
}
