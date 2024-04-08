import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/medical/presentation/cubits/emergency_cubit.dart';
import 'package:icare/src/features/medical/presentation/cubits/medical_info_cubit.dart';
import 'package:icare/src/features/medical/presentation/widgets/emergency_diseases_tab.dart';
import 'package:icare/src/features/medical/presentation/widgets/medical_info_tab.dart';

@RoutePage()
class MedicalView extends StatefulWidget implements AutoRouteWrapper {
  const MedicalView({super.key});

  @override
  State<MedicalView> createState() => _MedicalViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MedicalInfoCubit>(
          create: (_) => getIt.get<MedicalInfoCubit>()..getMedicalInfo(),
        ),
        BlocProvider<EmergencyCubit>(
          create: (_) => getIt.get<EmergencyCubit>()..getEmergencyDiseases(),
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
