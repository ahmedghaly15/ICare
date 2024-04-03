import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:icare/src/features/chat/presentation/widgets/chat_details_custom_sliver_app_bar.dart';
import 'package:icare/src/features/chat/presentation/widgets/message_field_and_buttons.dart';
import 'package:icare/src/features/chat/presentation/widgets/messages_bloc_builder.dart';

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
                    child: MessageFieldAndButtons(receiver: receiver),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
