import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/disease_image.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/disease_info_section_item.dart';

@RoutePage()
class EmergencyDiseaseDetailsView extends StatelessWidget {
  const EmergencyDiseaseDetailsView({
    super.key,
    required this.diseaseDetails,
  });

  final DiseaseDetails diseaseDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const DiseaseImage(
              imageUrl:
                  'https://res.cloudinary.com/dkeeazjre/image/upload/v1703870178/Photos/xidgjcc4eqwu8d3bljuh.jpg',
            ),
            MySizedBox.height12,
            SizedBox(
              height: SizeConfig.height * 0.06,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: AppConstants.scrollPhysics,
                itemBuilder: (_, index) => DiseaseInfoSectionItem(index: index),
                separatorBuilder: (_, __) => MySizedBox.width6,
                itemCount: 4,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Text(
                diseaseDetails.symptoms.join('\n\n'),
                style: AppTextStyles.textStyle16Bold(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
