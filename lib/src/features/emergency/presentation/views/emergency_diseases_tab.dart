import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/features/emergency/presentation/widgets/emergency_diseases_bloc_builder.dart';

class EmergencyDiseasesTab extends StatelessWidget {
  const EmergencyDiseasesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: AppConstants.scrollPhysics,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          sliver: const EmergencyDiseasesBlocBuilder(),
        ),
      ],
    );
  }
}
