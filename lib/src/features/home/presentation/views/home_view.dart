import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_cubit.dart';
import 'package:icare/src/features/tips/presentation/widgets/show_random_tip_dialog.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/home/presentation/widgets/feature_icon_button.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              context.read<TipsCubit>().getRandomTip();

              ShowRandomTipDialog.show(context);
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
              // context.read<TinyTalesCubit>().createTinyTale(
              //       CreateTinyTaleParams(
              //         text: 'This is a new tiny tale',
              //         date: getDate(),
              //         time: DateFormat.jm().format(DateTime.now()),
              //       ),
              //     );
              context.read<TinyTalesCubit>().getTinyTales().then((value) {
                context.pushRoute(const CommunityRoute());
              });
              // context.read<UserCubit>().getUserData();
              // print(Helper.currentUser!.name);

              // context
              //     .read<EmergencyCubit>()
              //     .getEmergencyDiseaseDetails('65e4a4ef8ed0c5d25deaf4f8');
            },
            child: Text(
              AppStrings.icareCommunity,
              style: AppTextStyles.textStyle30Bold(context),
            ),
          ),
          MySizedBox.height20,
          GestureDetector(
            onTap: () {
              context.pushRoute(
                ChatDetailsRoute(
                  receiver: const ICareUser(
                    name: 'اللهو الخفي',
                    profileImage:
                        'https://www.vetogate.com/Upload/libfiles/491/5/152.jpg',
                    uId: 't7eO5A1WAnQqHNtPThUCR4p0AWe2',
                    email: 'test2@gmail.com',
                  ),
                ),
              );
            },
            child: Text(
              'Chat with اللهو الخفي',
              style: AppTextStyles.textStyle30Bold(context),
            ),
          ),
        ],
      ),
    );
  }
}
