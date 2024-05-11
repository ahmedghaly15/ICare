import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_item.dart';

@RoutePage()
class NotificationTinyTaleView extends StatelessWidget {
  const NotificationTinyTaleView({super.key, required this.tinyTale});

  final TinyTale tinyTale;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(),
            SliverPadding(
              padding: AppUtils.tinyTalesPadding,
              sliver: SliverToBoxAdapter(
                child: TinyTaleItem(tinyTale: tinyTale),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
