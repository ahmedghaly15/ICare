import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/like_comment_bookmark_buttons.dart';

class TinyTaleItemImage extends StatelessWidget {
  const TinyTaleItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(30.r),
            child: Image.network(
              'https://img.freepik.com/free-photo/grandmother-grandchild-park_1303-9169.jpg?t=st=1711710380~exp=1711713980~hmac=33622b3af69d67b77e8cd708a3114687e18d970310fe7309787c5656b027f1c3&w=1060',
              fit: BoxFit.cover,
              height: SizeConfig.height * 0.3,
              width: double.infinity,
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
                    child: const LikeCommentBookmarkButtons(),
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
