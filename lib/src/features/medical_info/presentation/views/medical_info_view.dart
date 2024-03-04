import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/medical_info/presentation/cubit/medical_info_cubit.dart';
import 'package:icare/src/features/medical_info/presentation/widgets/medical_info_diseases_bloc_builder.dart';

@RoutePage()
class MedicalInfoView extends StatelessWidget implements AutoRouteWrapper {
  const MedicalInfoView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<MedicalInfoCubit>(
      create: (_) => getIt.get<MedicalInfoCubit>()..getMedicalInfo(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppConstants.horizontalPaddingVal.h),
        child: const CustomScrollView(
          physics: AppConstants.scrollPhysics,
          slivers: <Widget>[
            CustomSliverAppBar(title: AppStrings.medicalInfo),
            MedicalInfoDiseasesBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
