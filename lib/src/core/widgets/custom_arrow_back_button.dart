import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/size_config.dart';

class CustomArrowBackButton extends StatelessWidget {
  const CustomArrowBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.height * 0.06,
      width: SizeConfig.height * 0.06,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        color: const Color(0xffF1F1F1),
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Center(
        child: MaterialButton(
          padding: EdgeInsets.zero,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: () => context.popRoute(),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.primaryColor,
            size: SizeConfig.width * 0.05,
          ),
        ),
      ),
    );
  }
}
