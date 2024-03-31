import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/comments/presentation/cubit/comments_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/send_message_field_and_button_bloc_consumer.dart';

@RoutePage()
class CommentsView extends StatelessWidget implements AutoRouteWrapper {
  const CommentsView({super.key, required this.tinyTaleId});

  final String tinyTaleId;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CommentsCubit>(
      create: (_) => getIt.get<CommentsCubit>()..streamComments(tinyTaleId),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(title: AppStrings.comments),
            SliverFillRemaining(
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: ListView.builder(
                    itemBuilder: (_, index) => Text('Comment $index'),
                    itemCount: 10,
                  )),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: SizeConfig.height * 0.05,
                    ),
                    child: const SendMessageFieldAndButtonBlocConsumer(),
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
