import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_training_response.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/advanced_level_try_listen_buttons_bloc_consumer.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/ayah_item.dart';

@RoutePage()
class AdvancedLevelTrainingView extends StatelessWidget
    implements AutoRouteWrapper {
  const AdvancedLevelTrainingView({
    super.key,
    required this.data,
  });

  final AdvancedLevelTrainingResponse data;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<LevelTrainingCubit>(
      create: (_) => getIt.get<LevelTrainingCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: context
              .read<LevelTrainingCubit>()
              .advancedLevelTrainingScrollController,
          slivers: [
            SliverPadding(
              padding: AppConstants.viewAppBarPadding,
              sliver: CustomSliverAppBar(title: data.details.surahNameEn),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => index % 2 == 0
                      ? ElasticInRight(
                          child: AyahItem(ayah: data.details.fullSurah[index]))
                      : ElasticInLeft(
                          child: AyahItem(ayah: data.details.fullSurah[index])),
                  childCount: data.details.fullSurah.length,
                ),
              ),
            ),
            AdvancedLevelTryListenButtonsBlocConsumer(id: data.id),
          ],
        ),
      ),
    );
  }
}
