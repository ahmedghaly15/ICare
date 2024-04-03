import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';

class PersonWhoLikedItem extends StatelessWidget {
  const PersonWhoLikedItem({
    super.key,
    required this.person,
  });

  final ICareUser person;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: ListTile(
        onTap: () {},
        leading: IntrinsicWidth(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              CustomCachedNetworkImage(
                imageUrl: person.profileImage!,
                imageBuilder: (_, image) {
                  return CircleAvatar(
                    radius: 18.r,
                    backgroundImage: image,
                  );
                },
              ),
              CircleAvatar(
                radius: 9.r,
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  AppAssets.svgsRedHeartCommentIcon,
                  height: 10.h,
                  width: 10.w,
                ),
              ),
            ],
          ),
        ),
        title: Text(
          person.name!,
          style: AppTextStyles.textStyle18Bold(context),
        ),
      ),
    );
  }
}
