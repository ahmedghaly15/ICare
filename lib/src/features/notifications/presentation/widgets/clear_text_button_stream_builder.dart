import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_cubit.dart';
import 'package:icare/src/features/notifications/presentation/widgets/clear_notifications_dialog.dart';

class ClearTextButtonStreamBuilder extends StatelessWidget {
  const ClearTextButtonStreamBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: context.read<NotificationsCubit>().isNotificationsNotEmpty(),
      builder: (context, snapshot) {
        final bool isNotificationNotEmpty = snapshot.data ?? false;
        return isNotificationNotEmpty
            ? TextButton(
                onPressed: () {
                  ShowICareDialog.show(
                    context: context,
                    child: ClearNotificationsDialog(
                      text: AppStrings.sureToClearNotificationsHistory,
                      clearButtonText: AppStrings.clear,
                      onDeleteTapped: () {
                        context
                            .read<NotificationsCubit>()
                            .clearNotificationsHistory();
                        context.maybePop();
                      },
                    ),
                  );
                },
                child: const Text(AppStrings.clear),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
