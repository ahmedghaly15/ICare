import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat/chat_cubit.dart';
import 'package:icare/src/features/chat/presentation/widgets/chats_view_body.dart';

@RoutePage()
class ChatsView extends StatelessWidget implements AutoRouteWrapper {
  const ChatsView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ChatCubit>(
      create: (context) => getIt.get<ChatCubit>()..getChats(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChatsViewBody(),
    );
  }
}
