import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/cry_translator/presentation/cubit/cry_translator_cubit.dart';
import 'package:icare/src/features/cry_translator/presentation/widgets/cry_translator_view_body.dart';

@RoutePage()
class CryTranslatorView extends StatelessWidget implements AutoRouteWrapper {
  const CryTranslatorView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<CryTranslatorCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CryTranslatorViewBody(),
    );
  }
}
