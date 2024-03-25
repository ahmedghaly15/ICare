import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/functions/get_date.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_cubit.dart';
import 'package:intl/intl.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/home/presentation/widgets/feature_icon_button.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales_cubit.dart';

@RoutePage()
class HomeView extends StatelessWidget implements AutoRouteWrapper {
  const HomeView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<TipsCubit>(
      create: (_) => getIt.get<TipsCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              ShowICareDialog.show(
                  context: context,
                  state: ICareDialogStates.warning,
                  message: 'message');
            },
            icon: Image.asset(AppAssets.imagesAppLogo),
          ),
        ],
      ),
      body: Column(
        children: [
          MySizedBox.height27,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FeatureIconButton(
                onPressed: () =>
                    context.pushRoute(const BabyCryPredictorRoute()),
                featureName: AppStrings.cryPredictor,
                featureIcon: AppAssets.svgsCryTranslatorIcon,
                color: AppColors.darkBlue,
              ),
              MySizedBox.width15,
              FeatureIconButton(
                onPressed: () => context.pushRoute(const ICareBotRoute()),
                featureName: AppStrings.icareBot,
                featureIcon: AppAssets.svgsChatbotIcon,
                color: AppColors.darkGreen,
              ),
            ],
          ),
          MySizedBox.height20,
          GestureDetector(
            onTap: () {
              context.read<TinyTalesCubit>().createTinyTale(
                    CreateTinyTaleParams(
                      text: 'This is a new tiny tale',
                      date: getDate(),
                      time: DateFormat.jm().format(DateTime.now()),
                    ),
                  );
              // context.pushRoute(const AuthRoute());
              // context
              //     .read<EmergencyCubit>()
              //     .getEmergencyDiseaseDetails('65e4a4ef8ed0c5d25deaf4f8');
            },
            child: Text(
              'Home View',
              style: AppTextStyles.textStyle30Bold(context),
            ),
          ),
        ],
      ),
    );
  }
}
