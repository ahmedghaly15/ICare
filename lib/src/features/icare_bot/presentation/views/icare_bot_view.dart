import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/conversation_and_send_message_text_field.dart';

@RoutePage()
class ICareBotView extends StatelessWidget implements AutoRouteWrapper {
  const ICareBotView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ICareBotCubit>(
          create: (context) => getIt.get<ICareBotCubit>(),
        ),
        BlocProvider<BookmarkCubit>(
          create: (context) => getIt.get<BookmarkCubit>(),
        ),
      ],
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
          const ConversationAndSendMessageTextField(),
        ],
      ),
    );
  }

  AppBar _buildICareBotViewAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: context.isDarkModeActive
          ? AppColors.darkOrange
          : AppColors.primaryColor,
      title: const Text(AppStrings.icareBot),
      titleTextStyle: AppTextStyles.textStyle20Bold,
      leading: IconButton(
        onPressed: () => context.maybePop(),
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () => context.pushRoute(const BookmarksRoute()),
          icon: const Icon(
            Icons.bookmark,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
