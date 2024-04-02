import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/people_who_liked/presentation/cubit/people_who_liked_cubit.dart';

@RoutePage()
class PeopleWhoLikedView extends StatelessWidget implements AutoRouteWrapper {
  const PeopleWhoLikedView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<PeopleWhoLikedCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
