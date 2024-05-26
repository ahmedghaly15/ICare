import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/animated_empty_view.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/features/notifications/data/models/icare_notification.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_cubit.dart';
import 'package:icare/src/features/notifications/presentation/widgets/notification_item.dart';

class SliverNotificationsStreamBuilder extends StatelessWidget {
  const SliverNotificationsStreamBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: context.read<NotificationsCubit>().streamNotifications(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting &&
            snapshot.data == null) {
          return const SliverFillRemaining(
            child: Center(
              child: CustomCircularProgressIndicator(),
            ),
          );
        }
        final notifications = snapshot.data!.docs
            .map((notification) =>
                ICareNotification.fromJson(notification.data()))
            .toList();
        return notifications.isNotEmpty
            ? SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 0.w),
                sliver: SliverList.builder(
                  itemBuilder: (context, index) =>
                      NotificationItem(notification: notifications[index]),
                  itemCount: notifications.length,
                ),
              )
            : const SliverFillRemaining(
                child: AnimatedEmptyView(
                  svgImage: AppAssets.svgsEmptyNotifications,
                  text: AppStrings.emptyNotifications,
                ),
              );
      },
    );
  }
}
