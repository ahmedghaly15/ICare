import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot_state.dart';

class CustomSendMessageIconButton extends StatelessWidget {
  const CustomSendMessageIconButton({super.key, required this.isEnabled});

  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ICareBotCubit, ICareBotState>(
      buildWhen: (_, state) =>
          state is Loading || state is Success || state is Error,
      builder: (_, state) {
        if (state is Loading) {
          return const CustomCircularProgressIndicator();
        }
        return CircleAvatar(
          radius: 20.r,
          backgroundColor: isEnabled ? AppColors.primaryColor : Colors.grey,
          child: IconButton(
            padding: EdgeInsets.zero,
            style: IconButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize: Size.zero,
            ),
            icon: Icon(
              Icons.send,
              color: isEnabled ? Colors.white : Colors.white30,
            ),
            onPressed: () {
              isEnabled
                  ? context.read<ICareBotCubit>().askICareBot(context)
                  : null;
            },
          ),
        );
      },
    );
  }
}
