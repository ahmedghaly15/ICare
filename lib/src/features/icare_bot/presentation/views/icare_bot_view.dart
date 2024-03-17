import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot_state.dart';
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
      body: BlocBuilder<ICareBotCubit, ICareBotState>(
        builder: (context, state) => Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            context.read<ICareBotCubit>().hasApiKey
                ? const Conversation()
                : Center(
                    child: Text(
                      AppStrings.noApiKeyFound,
                      style: AppTextStyles.textStyle20Bold(context)
                          .copyWith(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
            const SendMessageTextFieldAndButton(),
          ],
        ),
      ),
    );
  }

  AppBar _buildICareBotViewAppBar(BuildContext context) {
    return AppBar(
      title: const Text('ICare Bot'),
      leading: IconButton(
        onPressed: () => context.popRoute(),
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
      ),
    );
  }
}
