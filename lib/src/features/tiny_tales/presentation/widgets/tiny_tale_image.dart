import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/like_comment_bookmark_buttons.dart';

class TinyTaleItemImage extends StatelessWidget {
  const TinyTaleItemImage({
    super.key,
    required this.tinyTaleImageUrl,
    required this.tinyTale,
  });

  final String tinyTaleImageUrl;
  final TinyTale tinyTale;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(30.r),
            child: AspectRatio(
              aspectRatio: 1,
              child: CustomCachedNetworkImage(imageUrl: tinyTaleImageUrl),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Material(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30.r),
              ),
              elevation: 0,
              color: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30.r),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    height: 47.h,
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    width: double.infinity,
                    color: Colors.transparent,
                    child: LikeCommentBookmarkButtons(
                      isTinyTaleContainsImage: true,
                      tinyTale: tinyTale,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
