import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class TinyTaleItemUpperSection extends StatelessWidget {
  const TinyTaleItemUpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CustomCachedNetworkImage(
          imageUrl:
              'https://img.freepik.com/free-photo/cheerful-girl-cashmere-sweater-laughs-against-backdrop-blossoming-sakura-portrait-woman-yellow-hoodie-city-spring_197531-17886.jpg?w=360&t=st=1711719442~exp=1711720042~hmac=8261431bcf06f12a879682e884cea79c157ac2db49f452958bba8cadaa7d5a1c',
          imageBuilder: (_, image) => InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(AppConstants.radius25.r),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 23.r,
              child: CircleAvatar(
                backgroundColor: AppColors.lightGrey2,
                radius: 20.r,
                backgroundImage: image,
              ),
            ),
          ),
        ),
        MySizedBox.width10,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Text(
                  'Ahmed Ali',
                  style: AppTextStyles.textStyle20Bold(context),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '25 Feb 2022 at 10:20 PM',
                style: AppTextStyles.textStyle16Medium(context).copyWith(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        MySizedBox.width15,
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            size: 20.h,
          ),
        ),
      ],
    );
  }
}
