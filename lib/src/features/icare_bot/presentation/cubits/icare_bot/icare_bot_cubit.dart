import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/icare_bot/data/models/ask_icare_bot_params.dart';
import 'package:icare/src/features/icare_bot/domain/usecases/ask_icare_bot.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_state.dart';

class ICareBotCubit extends Cubit<ICareBotState> {
  final AskICareBotUseCase _askICareBotUseCase;

  ICareBotCubit(
    this._askICareBotUseCase,
  ) : super(const ICareBotState.initial()) {
    _initVariables();
  }

  void _initVariables() {
    _model = GenerativeModel(
      model: "gemini-pro",
      apiKey: dotenv.env[AppStrings.apiKey]!,
      safetySettings: <SafetySetting>[
        SafetySetting(HarmCategory.harassment, HarmBlockThreshold.high),
        SafetySetting(HarmCategory.hateSpeech, HarmBlockThreshold.high),
        SafetySetting(HarmCategory.sexuallyExplicit, HarmBlockThreshold.high),
        SafetySetting(HarmCategory.dangerousContent, HarmBlockThreshold.high),
      ],
    );
    chat = _model.startChat();
  }

  late final GenerativeModel _model;
  late final ChatSession chat;

  final TextEditingController textController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  final bool hasApiKey = dotenv.env[AppStrings.apiKey] != null &&
      dotenv.env[AppStrings.apiKey]!.isNotEmpty;

  void askICareBot(BuildContext context) async {
    emit(const ICareBotState.loading());

    _convertSendMessageTextFieldStatus();

    AuthHelper.keyboardUnfocus(context);

    final response = await _askICareBotUseCase(
      AskICareBotParams(
        chat: chat,
        content: Content.text(textController.text),
      ),
    );

    response.when(
      success: (response) {
        _handleAskICareBotSuccess(response, context);
      },
      failure: (error) {
        _convertSendMessageTextFieldStatus();
        emit(ICareBotState.error(error.failureMsg ?? ''));
      },
    );
  }

  void _handleAskICareBotSuccess(
      GenerateContentResponse response, BuildContext context) {
    if (response.text == null) {
      ShowICareDialog.show(
        // ignore: use_build_context_synchronously
        context: context,
        state: ICareDialogStates.warning,
        message: 'No response from API.',
      );
    } else {
      _convertSendMessageTextFieldStatus();
      emit(ICareBotState.success(response.text));
      textController.clear();
      _scrollToTheBottom();
    }
  }

  void _scrollToTheBottom() {
    // Ensure the scroll operation is performed after the widget tree is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bool isScrolledToBottom = scrollController.position.pixels ==
          scrollController.position.maxScrollExtent;
      // Scroll to the bottom of the chat history
      if (!isScrolledToBottom) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent + SizeConfig.height * 0.12,
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeOut,
        );
      }
    });
  }

  bool isSendMessageTextFieldEnabled = true;

  void _convertSendMessageTextFieldStatus() {
    isSendMessageTextFieldEnabled = !isSendMessageTextFieldEnabled;
    emit(
      ICareBotState.convertSendMessageTextFieldStatus(
        isSendMessageTextFieldEnabled,
      ),
    );
  }

  void setNewTextValue(String text) {
    textController.text = text;
    emit(ICareBotState.setNewTextValue(textController.text));
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

  final List<String> frequentlyAskedQuestions = <String>[
    AppStrings.speakingAgeQuestion,
    AppStrings.eatingAgeQuestion,
  ];

  void handleICareBotState(
    ICareBotState<dynamic> state,
    BuildContext context,
  ) {
    state.whenOrNull(
      error: (error) => ShowICareDialog.showICareDialogError(context, error),
    );
  }
}
