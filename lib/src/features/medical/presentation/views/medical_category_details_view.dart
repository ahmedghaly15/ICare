import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';

@RoutePage()
class MedicalCategoryDetailsView extends StatelessWidget {
  const MedicalCategoryDetailsView({super.key, required this.medicalCategory});

  final GetMedicalResponse medicalCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          medicalCategory.medicalCategoryName,
          style: AppTextStyles.textStyle30Bold(context),
        ),
        centerTitle: true,
      ),
    );
  }
}
