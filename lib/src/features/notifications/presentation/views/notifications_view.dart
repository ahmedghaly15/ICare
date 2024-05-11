import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/notifications/presentation/widgets/clear_text_button_stream_builder.dart';
import 'package:icare/src/features/notifications/presentation/widgets/sliver_notifications_stream_builder.dart';

@RoutePage()
class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              title: AppStrings.notifications,
              actions: <Widget>[
                ClearTextButtonStreamBuilder(),
              ],
            ),
            SliverNotificationsStreamBuilder(),
          ],
        ),
      ),
    );
  }
}
