import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor_feedback/bab_cry_predictor_feedback_cubit.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/baby_cry_predictor_classes_sliver_list_bloc_builder.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/leave_feedback_button_bloc_consumer.dart';

@RoutePage()
class BabyCryPredictorLeaveFeedbackView extends StatelessWidget
    implements AutoRouteWrapper {
  const BabyCryPredictorLeaveFeedbackView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<BabyCryPredictorFeedbackCubit>(
      create: (_) => getIt.get<BabyCryPredictorFeedbackCubit>()
        ..getBabyCryPredictorClasses(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(title: AppStrings.feedback),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            sliver: SliverToBoxAdapter(
              child: Text(
                AppStrings.listenToVoices,
                style: AppTextStyles.textStyle16Bold.copyWith(
                  color:
                      isDarkModeActive(context) ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: MySizedBox.height15),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 36.w),
            sliver: const BabyCryPredictorClassesSliverListBlocBuilder(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: <Widget>[
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 42.h,
                    horizontal: 54.w, // 54 = 18 + 36
                  ),
                  child: const LeaveFeedbackButtonBlocConsumer(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
