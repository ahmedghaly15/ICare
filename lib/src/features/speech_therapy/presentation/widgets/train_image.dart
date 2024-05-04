import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';

class TrainImage extends StatelessWidget {
  const TrainImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          AppUtils.primaryBoxShadow,
        ],
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.r),
        child: CustomCachedNetworkImage(imageUrl: imageUrl),
      ),
    );
  }
}
