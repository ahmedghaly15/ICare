import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/home/presentation/widgets/custom_drawer.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_cubit.dart';
import 'package:icare/src/features/tips/presentation/widgets/show_random_tip_dialog.dart';
import 'package:icare/src/core/utils/app_assets.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    context.read<TipsCubit>().getRandomTip();
                    ShowRandomTipDialog.show(context);
                  },
                  icon: Image.asset(AppAssets.imagesAppLogo),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
