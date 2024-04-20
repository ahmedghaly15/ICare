import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/features/medical/presentation/widgets/medical_info_diseases_bloc_builder.dart';

class MedicalInfoTab extends StatelessWidget {
  const MedicalInfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: AppConstants.scrollPhysics,
      slivers: <Widget>[
        MedicalInfoDiseasesBlocBuilder(),
      ],
    );
  }
}
