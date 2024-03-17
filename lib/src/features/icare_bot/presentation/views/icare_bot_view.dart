import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot_state.dart';

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
        builder: (context, state) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              context.read<ICareBotCubit>().hasApiKey
                  ? ListView.separated(
                      padding: EdgeInsets.only(
                        top: 16.h,
                        bottom: SizeConfig.height * 0.12,
                        right: 4.w,
                        left: 4.w,
                      ),
                      physics: AppConstants.scrollPhysics,
                      controller:
                          context.read<ICareBotCubit>().scrollController,
                      itemCount:
                          context.read<ICareBotCubit>().chat.history.length,
                      itemBuilder: (_, index) {
                        final content = context
                            .read<ICareBotCubit>()
                            .chat
                            .history
                            .toList()[index];

                        final text = content.parts
                            .whereType<TextPart>()
                            .map<String>((e) => e.text)
                            .join('');

                        return MessageWidget(
                          message: text,
                          isUser: content.role == 'user',
                        );
                      },
                      separatorBuilder: (_, __) => MySizedBox.height12,
                    )
                  : Center(
                      child: Text(
                        AppStrings.noApiKeyFound,
                        style: AppTextStyles.textStyle20Bold(context)
                            .copyWith(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 32.h,
                  horizontal: 8.w,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: CustomTextFormField(
                        controller:
                            context.read<ICareBotCubit>().textController,
                        hintText: 'Ask ICare Bot...',
                      ),
                    ),
                    BlocBuilder<ICareBotCubit, ICareBotState>(
                      buildWhen: (_, state) =>
                          state is Loading || state is Success,
                      builder: (_, state) {
                        if (state is Loading) {
                          return const CustomCircularProgressIndicator();
                        }
                        return IconButton(
                          icon: const Icon(
                            Icons.send,
                            color: AppColors.primaryColor,
                          ),
                          onPressed: () {
                            context.read<ICareBotCubit>().sendMessage(context);
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
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

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
    required this.message,
    required this.isUser,
  });

  final String message;
  final bool isUser;

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      clipper: isUser
          ? ChatBubbleClipper3(type: BubbleType.sendBubble)
          : ChatBubbleClipper3(type: BubbleType.receiverBubble),
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      backGroundColor: isUser ? AppColors.primaryColor : Colors.green,
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: AppConstants.padding16.w,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: SizeConfig.width * 0.7),
        child: AnimatedTextKit(
          animatedTexts: <AnimatedText>[
            TypewriterAnimatedText(
              message,
              textStyle: AppTextStyles.textStyle16Medium(context).copyWith(
                color: Colors.white,
              ),
              speed: const Duration(milliseconds: 50),
              cursor: '\u25CF',
            ),
          ],
          isRepeatingAnimation: false,
        ),
      ),
    );
  }
}
