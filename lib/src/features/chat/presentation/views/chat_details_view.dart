import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_cubit.dart';

@RoutePage()
class ChatDetailsView extends StatelessWidget implements AutoRouteWrapper {
  const ChatDetailsView({super.key, required this.receiver});

  final ICareUser receiver;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ChatCubit>(
      create: (_) => getIt.get<ChatCubit>()..streamMessages(receiver.uId!),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
