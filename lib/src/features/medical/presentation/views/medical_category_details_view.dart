import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_circle_back_button.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';
import 'package:icare/src/features/medical/presentation/widgets/disease_item.dart';

@RoutePage()
class MedicalCategoryDetailsView extends StatelessWidget {
  const MedicalCategoryDetailsView({super.key, required this.medicalCategory});

  final GetMedicalResponse medicalCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.horizontalPaddingVal),
        child: CustomScrollView(
          physics: AppConstants.scrollPhysics,
          slivers: [
            SliverAppBar(
              elevation: 0,
              centerTitle: true,
              title: Text(
                medicalCategory.medicalCategoryName,
                style: AppTextStyles.textStyle25Bold(context),
              ),
              leading: const CustomCircleBackButton(),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: SizeConfig.width,
                  mainAxisExtent: SizeConfig.height * 0.25,
                  mainAxisSpacing: 16.h,
                  childAspectRatio: 1,
                ),
                delegate: SliverChildBuilderDelegate(
                  (_, index) => AnimationConfiguration.staggeredGrid(
                    position: index,
                    columnCount: medicalCategory.data.length,
                    child: ScaleAnimation(
                      child: FadeInAnimation(
                        child: DiseaseItem(
                          diseaseInfo: medicalCategory.data[index],
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  childCount: medicalCategory.data.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
