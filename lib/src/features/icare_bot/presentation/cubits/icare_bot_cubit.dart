import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_dialog.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot_state.dart';

class ICareBotCubit extends Cubit<ICareBotState> {
  ICareBotCubit() : super(const ICareBotState.initial()) {
    _initVariables();
  }

  void _initVariables() {
    _model =
        GenerativeModel(model: "gemini-pro", apiKey: dotenv.env['API_KEY']!);
    chat = _model.startChat();
  }

  late final GenerativeModel _model;
  late final ChatSession chat;

  final TextEditingController textController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  final bool hasApiKey =
      dotenv.env['API_KEY'] != null && dotenv.env['API_KEY']!.isNotEmpty;

  void sendMessage(BuildContext context) async {
    emit(const ICareBotState.loading());

    try {
      final GenerateContentResponse response =
          await chat.sendMessage(Content.text(textController.text));
      final String? text = response.text;

      debugPrint('====>>>>>>> $text ');

      emit(ICareBotState.success(response.text));

      if (text == null) {
        CustomDialog.show(
          context: context,
          state: CustomDialogStates.warning,
          message: 'No response from API.',
        );
      } else {
        // Scroll to the bottom of the chat history
        scrollController.animateTo(
          scrollController.position.maxScrollExtent + SizeConfig.height * 0.12,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    } catch (e) {
      debugPrint('ERROR WHILE SENDING MESSAGE TO GEMINI: $e');
      emit(ICareBotState.error(e.toString()));
    }
  }

  @override
  Future<void> close() {
    _disposeControllers();

    return super.close();
  }

  void _disposeControllers() {
    textController.dispose();
    scrollController.dispose();
  }
}
