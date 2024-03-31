import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_cubit.dart';

@RoutePage()
class CommentRepliesView extends StatelessWidget implements AutoRouteWrapper {
  const CommentRepliesView({super.key, required this.params});

  final CommentRepliesViewParams params;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CommentRepliesCubit>(
      create: (_) => getIt.get<CommentRepliesCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
