import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales_cubit.dart';

@RoutePage()
class ICareCommunityView extends StatelessWidget implements AutoRouteWrapper {
  const ICareCommunityView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<TinyTalesCubit>()..getTinyTales(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
