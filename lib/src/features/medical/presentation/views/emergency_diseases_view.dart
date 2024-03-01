import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_circle_back_button.dart';
import 'package:icare/src/features/medical/presentation/widgets/emergency_diseases_bloc_builder.dart';

@RoutePage()
class EmergencyDiseasesView extends StatelessWidget {
  const EmergencyDiseasesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.horizontalPaddingVal),
        child: CustomScrollView(
          physics: AppConstants.scrollPhysics,
          slivers: <Widget>[
            SliverAppBar(
              elevation: 0,
              centerTitle: true,
              title: Text(
                AppStrings.pediatricEmergency,
                style: AppTextStyles.textStyle25Bold(context),
              ),
              leading: const CustomCircleBackButton(),
            ),
            const EmergencyDiseasesBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
