import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/new_tiny_tale/new_tiny_tale_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/new_tiny_tale_view_body.dart';

@RoutePage()
class NewTinyTaleView extends StatelessWidget implements AutoRouteWrapper {
  const NewTinyTaleView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<NewTinyTaleCubit>(
      create: (_) => getIt.get<NewTinyTaleCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NewTinyTaleViewBody(),
    );
  }
}
