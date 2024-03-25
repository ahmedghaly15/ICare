import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_state.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/conversation.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/send_message_text_field_and_button.dart';

@RoutePage()
class ICareBotView extends StatelessWidget implements AutoRouteWrapper {
  const ICareBotView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<ICareBotCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildICareBotViewAppBar(context),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(AppAssets.imagesAppLogo),
          ),
          BlocBuilder<ICareBotCubit, ICareBotState>(
            builder: (context, state) => Column(
              children: <Widget>[
                context.read<ICareBotCubit>().hasApiKey
                    ? const Expanded(child: Conversation())
                    : Center(
                        child: Text(
                          AppStrings.noApiKeyFound,
                          style: AppTextStyles.textStyle20Bold(context)
                              .copyWith(color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.w,
                    right: 8.w,
                    bottom: SizeConfig.height * 0.05,
                    top: 8.h,
                  ),
                  child: const SendMessageTextFieldAndButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildICareBotViewAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      title: const Text(AppStrings.icareBot),
      titleTextStyle: AppTextStyles.textStyle30Bold(context),
      leading: IconButton(
        onPressed: () => context.maybePop(),
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
      ),
    );
  }
}
