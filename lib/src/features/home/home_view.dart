import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
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
    );
  }
}
