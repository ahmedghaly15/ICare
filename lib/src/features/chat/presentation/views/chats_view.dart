import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/chat/presentation/widgets/chats_bloc_builder.dart';

@RoutePage()
class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: AppConstants.scrollPhysics,
          slivers: [
            SliverPadding(
              padding: AppUtils.viewAppBarPadding,
              sliver: const CustomSliverAppBar(
                title: AppStrings.chats,
              ),
            ),
            const ChatsBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
