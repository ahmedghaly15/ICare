import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/custom_text_button_with_icon.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/gradient_colorful_container.dart';

@RoutePage()
class TrainingOnLevelOneAnimalView extends StatelessWidget
    implements AutoRouteWrapper {
  const TrainingOnLevelOneAnimalView({super.key, required this.data});

  final LevelOneTrainingResponse data;

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
          slivers: [
            SliverPadding(
              padding: AppConstants.viewAppBarPadding,
              sliver: const CustomSliverAppBar(title: ''),
            ),
            SliverFillRemaining(
              child: LevelTrainingItem(data: data),
            ),
          ],
        ),
      ),
    );
  }
}

class LevelTrainingItem extends StatelessWidget {
  const LevelTrainingItem({
    super.key,
    required this.data,
  });

  final LevelOneTrainingResponse data;

  @override
  Widget build(BuildContext context) {
    return GradientColorfulContainer(
      radiusVal: 50,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  AppConstants.primaryBoxShadow,
                ],
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child:
                    CustomCachedNetworkImage(imageUrl: data.details.imageUrl),
              ),
            ),
          ),
          MySizedBox.height78,
          Row(
            children: <Widget>[
              Expanded(
                child: CustomTextButtonWithIcon(
                  onPressed: () {},
                  label: const Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                  icon: const Text(AppStrings.tryIt),
                ),
              ),
              MySizedBox.width20,
              Expanded(
                child: CustomTextButtonWithIcon(
                  onPressed: () {
                    context
                        .read<LevelTrainingCubit>()
                        .playPauseAudio(data.details.audioUrl);
                  },
                  label: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  icon: const Text(AppStrings.listen),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
