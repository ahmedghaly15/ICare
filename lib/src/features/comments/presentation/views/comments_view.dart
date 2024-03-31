import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/comments/presentation/cubit/comments_cubit.dart';

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
    return const Placeholder();
  }
}
