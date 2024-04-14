import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_cubit.dart';

@RoutePage()
class EditProfileView extends StatelessWidget implements AutoRouteWrapper {
  const EditProfileView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<EditProfileCubit>(
      create: (_) => getIt.get<EditProfileCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
