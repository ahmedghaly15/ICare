import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/custom_circle_back_button.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

@RoutePage()
class DiseaseDetailsView extends StatelessWidget {
  const DiseaseDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> symptoms = [
      "1.Dehydration*: Dehydration is a significant concern, especially in young children. If your child is unable to keep fluids down, and signs of dehydration are present, such as dry mouth, sunken eyes, reduced urination, and extreme fussiness, it is crucial to seek medical care.",
      "2. Blood in Vomit: If you notice blood in your child's vomit, this should be treated as an emergency. It may indicate an injury, gastrointestinal bleeding, or other serious medical conditions.",
      "3. Severe Abdominal Pain*: If your child experiences severe abdominal pain along with vomiting, it could be a sign of an underlying issue like appendicitis or a blockage in the intestines. Seek medical attention in such cases.",
      "4. Vomiting After Head Injury*: If your child has recently suffered a head injury and is vomiting, it could be a sign of a concussion. It's important to have them evaluated by a healthcare provider, especially if the vomiting is persistent.",
      "5. Vomiting After Ingesting a Harmful Substance*: If you suspect that your child has ingested a toxic substance, household chemical, or a medication overdose, and they are vomiting, contact poison control and seek immediate medical attention.",
      "6. Vomiting with High Fever*: If vomiting is accompanied by a high fever, especially in very young children, it can be a sign of a serious infection. Consult a healthcare provider.",
      "7. Projectile Vomiting*: In some cases, especially in infants, projectile vomiting can be a sign of a gastrointestinal obstruction or other underlying condition. Seek medical attention if this type of vomiting occurs.",
      "8. Prolonged Vomiting*: If vomiting persists for an extended period or is recurrent, consult a healthcare provider to determine the cause and appropriate treatment.",
      "9. Signs of Meningitis*: In rare cases, vomiting can be associated with meningitis. If your child also exhibits symptoms like severe headache, neck stiffness, and sensitivity to light, seek immediate medical care.",
      "10. Lethargy or Altered Mental State*: If your child becomes extremely lethargic or shows signs of confusion or altered mental state along with vomiting, this could be indicative of a serious underlying condition."
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.height * 0.35,
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(
                        AppConstants.radiusVal,
                      ),
                    ),
                    child: const CustomCachedNetworkImage(
                      imageUrl:
                          'https://res.cloudinary.com/dkeeazjre/image/upload/v1703870178/Photos/xidgjcc4eqwu8d3bljuh.jpg',
                    ),
                  ),
                  Positioned(
                    top: 10.h,
                    left: 10.w,
                    child: const CustomCircleBackButton(
                      icon: Icons.keyboard_arrow_down_outlined,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            MySizedBox.height12,
            SizedBox(
              height: SizeConfig.height * 0.06,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: AppConstants.scrollPhysics,
                itemBuilder: (_, index) => MaterialButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50.r)),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(
                      left: index == 0 ? 10.w : 0,
                      right: index == 3 ? 10.w : 0,
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.all(Radius.circular(50.r)),
                    ),
                    child: Text(
                      'initial manangment',
                      style: AppTextStyles.textStyle13Bold(context),
                    ),
                  ),
                ),
                separatorBuilder: (_, __) => MySizedBox.width6,
                itemCount: 4,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Text(
                symptoms.join('\n\n'),
                style: AppTextStyles.textStyle16Bold(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
