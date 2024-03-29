import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class UsernameAndImage extends StatelessWidget {
  const UsernameAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CustomCachedNetworkImage(
          imageUrl:
              'https://img.freepik.com/free-photo/cheerful-girl-cashmere-sweater-laughs-against-backdrop-blossoming-sakura-portrait-woman-yellow-hoodie-city-spring_197531-17886.jpg?w=360&t=st=1711719442~exp=1711720042~hmac=8261431bcf06f12a879682e884cea79c157ac2db49f452958bba8cadaa7d5a1c',
          imageBuilder: (_, image) {
            return CircleAvatar(
              backgroundImage: image,
              radius: 25.r,
              backgroundColor: AppColors.primaryColor,
            );
          },
        ),
        MySizedBox.width10,
        Expanded(
          child: Text(
            Helper.currentUser!.name!,
            style: AppTextStyles.textStyle20Bold(context),
          ),
        ),
      ],
    );
  }
}
