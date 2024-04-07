import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/features/medical_info/presentation/widgets/medical_info_diseases_bloc_builder.dart';

class MedicalInfoTab extends StatelessWidget {
  const MedicalInfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: AppConstants.scrollPhysics,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          sliver: const MedicalInfoDiseasesBlocBuilder(),
        ),
      ],
    );
  }
}
