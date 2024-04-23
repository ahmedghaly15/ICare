import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/home/presentation/widgets/custom_drawer.dart';
import 'package:icare/src/features/home/presentation/widgets/home_view_body.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_cubit.dart';

@RoutePage()
class HomeView extends StatelessWidget implements AutoRouteWrapper {
  const HomeView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<TipsCubit>(
      create: (_) => getIt.get<TipsCubit>()..getRandomTip(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
      drawer: CustomDrawer(),
    );
  }
}
