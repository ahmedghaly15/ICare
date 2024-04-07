import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/emergency/presentation/cubit/emergency_cubit.dart';
import 'package:icare/src/features/emergency/presentation/views/emergency_diseases_tab.dart';
import 'package:icare/src/features/medical_info/presentation/cubit/medical_info_cubit.dart';
import 'package:icare/src/features/medical_info/presentation/views/medical_info_tab.dart';

@RoutePage()
class MedicalView extends StatefulWidget implements AutoRouteWrapper {
  const MedicalView({super.key});

  @override
  State<MedicalView> createState() => _MedicalViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<EmergencyCubit>(
          create: (_) => getIt.get<EmergencyCubit>()..getEmergencyDiseases(),
        ),
        BlocProvider<MedicalInfoCubit>(
          create: (_) => getIt.get<MedicalInfoCubit>()..getMedicalInfo(),
        ),
      ],
      child: this,
    );
  }
}

class _MedicalViewState extends State<MedicalView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        bottom: TabBar(
          padding: EdgeInsets.zero,
          controller: _tabController,
          indicatorWeight: 4.h,
          isScrollable: true,
          tabs: const [
            Tab(text: AppStrings.medicalInfo),
            Tab(text: AppStrings.emergency),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          MedicalInfoTab(),
          EmergencyDiseasesTab(),
        ],
      ),
    );
  }
}
