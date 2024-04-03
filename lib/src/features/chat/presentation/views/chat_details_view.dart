import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/custom_circle_back_button.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/custom_send_message_icon_button.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/pick_image_icon_button.dart';
import 'package:icare/src/core/widgets/send_message_text_field.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_state.dart';
import 'package:icare/src/features/chat/presentation/widgets/chat_details_custom_sliver_app_bar.dart';
import 'package:icare/src/features/chat/presentation/widgets/custom_message_bubble.dart';
import 'package:icare/src/features/chat/presentation/widgets/messages_bloc_builder.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class ChatDetailsView extends StatelessWidget implements AutoRouteWrapper {
  const ChatDetailsView({super.key, required this.receiver});

  final ICareUser receiver;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ChatCubit>(
      create: (_) => getIt.get<ChatCubit>()..streamMessages(receiver.uId!),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            ChatDetailsCustomSliverAppBar(
              receiverName: receiver.name!,
              receiverProfileImage: receiver.profileImage!,
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              sliver: SliverToBoxAdapter(
                child: Divider(
                  color: Colors.black.withOpacity(0.15),
                ),
              ),
            ),
            MessagesBlocBuilder(receiverId: receiver.uId!),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 8.w,
                      bottom: AppConstants.textFieldBottomPadding,
                      top: 8.h,
                    ),
                    child: Row(
                      children: <Widget>[
                        PickImageIconButton(
                          icon: Icons.photo_camera,
                          onPressed: () => context
                              .read<ChatCubit>()
                              .pickMessageImage(ImageSource.camera),
                        ),
                        PickImageIconButton(
                          icon: Icons.image,
                          onPressed: () => context
                              .read<ChatCubit>()
                              .pickMessageImage(ImageSource.gallery),
                        ),
                        Expanded(
                          child: SendMessageTextField(
                            controller:
                                context.read<ChatCubit>().messageController,
                            hintText: AppStrings.typeAMessage,
                            onChanged: (String value) {
                              context.read<ChatCubit>().setNewTextValue(value);
                            },
                          ),
                        ),
                        SizedBox.square(dimension: 8.h),
                        CustomSendMessageIconButton(
                          isEnabled: context
                                  .read<ChatCubit>()
                                  .messageController
                                  .text
                                  .isNotEmpty ||
                              context.read<ChatCubit>().messageImage != null,
                          onPressed: context.read<ChatCubit>().newMessage(
                                context: context,
                                receiverId: receiver.uId!,
                                receiverName: receiver.name!,
                              ),
                        ),
                      ],
                    ),
                  ),
                  if (context.read<ChatCubit>().messageImage != null) ...[
                    MySizedBox.height8,
                    Text(
                      'PICKED',
                      style: AppTextStyles.textStyle20Bold(context).copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ]
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
