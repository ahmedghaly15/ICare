import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MySizedBox.height27,
        IconButton(
          onPressed: () {
            context.pushRoute(const CryTranslatorRoute());
          },
          icon: SvgPicture.asset(
            AppAssets.svgsCryTranslatorIcon,
          ),
        ),
        MySizedBox.height20,
        GestureDetector(
          onTap: () {
            context.pushRoute(const AuthRoute());
            // context
            //     .read<EmergencyCubit>()
            //     .getEmergencyDiseaseDetails('65e4a4ef8ed0c5d25deaf4f8');
          },
          child: Text(
            'Home View',
            style: AppTextStyles.textStyle30Bold(context),
          ),
        ),
      ],
    );
  }
}
