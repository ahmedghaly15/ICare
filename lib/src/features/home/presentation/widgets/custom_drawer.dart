import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/features/home/presentation/widgets/custom_home_drawer_header.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.width * 0.7,
      color: Colors.white,
      padding: EdgeInsets.only(
        left: 14.w,
        right: 14.w,
        top: SizeConfig.height * 0.05,
        bottom: 30.h,
      ),
      child: const CustomScrollView(
        slivers: [
          CustomHomeDrawerHeader(),
        ],
      ),
    );
  }
}
