import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';
import 'package:icare/src/features/medical/presentation/widgets/medical_item.dart';

class MedicalItemsListView extends StatelessWidget {
  const MedicalItemsListView({
    super.key,
    required this.medicalItems,
  });

  final List<GetMedicalResponse> medicalItems;

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.horizontalPaddingVal.w,
          vertical: 40.h,
        ),
        physics: AppConstants.scrollPhysics,
        itemCount: medicalItems.length,
        itemBuilder: (_, index) => Bounce(
          child: MedicalItem(
            itemInfo: medicalItems[index],
            onPressed: () {
              debugPrint('DATA: ${medicalItems[index].data.toString()}');
            },
          ),
        ),
        separatorBuilder: (_, __) => MySizedBox.height20,
      ),
    );
  }
}
