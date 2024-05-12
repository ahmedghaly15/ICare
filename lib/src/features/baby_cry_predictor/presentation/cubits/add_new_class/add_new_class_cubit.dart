import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/baby_cry_predictor_add_new_class.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/add_new_class/add_new_class_state.dart';

class AddNewClassCubit extends Cubit<AddNewClassState> {
  final BabyCryPredictorAddNewClassUseCase _babyCryPredictorAddNewClassUseCase;
  AddNewClassCubit(
    this._babyCryPredictorAddNewClassUseCase,
  ) : super(const AddNewClassState.initial()) {
    _initAttributes();
  }

  void _initAttributes() {
    newClassTextEditingController = TextEditingController();
    writeNewClassFormKey = GlobalKey<FormState>();
  }

  late final GlobalKey<FormState> writeNewClassFormKey;
  late final TextEditingController newClassTextEditingController;

  void _babyCryPredictorAddNewClass() async {
    emit(const AddNewClassState.addNewClassLoading());
    final result = await _babyCryPredictorAddNewClassUseCase(
        newClassTextEditingController.text.trim());
    result.when(
      success: (success) {
        emit(AddNewClassState.addNewClassSuccess(success));
        newClassTextEditingController.clear();
      },
      error: (error) => emit(
        AddNewClassState.addNewClassError(error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void addNewClass(BuildContext context) {
    if (writeNewClassFormKey.currentState!.validate()) {
      AuthHelper.keyboardUnfocus(context);
      _babyCryPredictorAddNewClass();
    }
  }

  @override
  Future<void> close() {
    _disposeAttributes();
    return super.close();
  }

  void _disposeAttributes() {
    newClassTextEditingController.dispose();
  }
}
