import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/home/presentation/cubits/developers/developers_cubit.dart';

@RoutePage()
class DevelopersView extends StatelessWidget implements AutoRouteWrapper {
  const DevelopersView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<DevelopersCubit>(
      create: (context) => getIt.get<DevelopersCubit>()..getDevelopers(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
