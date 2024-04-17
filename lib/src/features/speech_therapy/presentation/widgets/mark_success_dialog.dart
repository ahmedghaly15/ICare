import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';

class MarkSuccessDialog extends StatelessWidget {
  const MarkSuccessDialog({
    super.key,
    required this.status,
    required this.imageUrl,
  });

  final String status, imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(25.r),
              child: CustomCachedNetworkImage(
                imageUrl: imageUrl,
              ),
            ),
            Positioned(
              bottom: 20.h,
              left: 0,
              right: 0,
              child: Text(
                status,
                style: AppTextStyles.textStyle18Bold(context)
                    .copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
