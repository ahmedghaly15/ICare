import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/bloc_observer.dart';
import 'package:icare/icare_app.dart';
import 'package:icare/src/core/utils/service_locator.dart';

//TODO: use flutter_spinkit in forgot password and reset password screens

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();

  ServiceLocator().serviceLocatorSetup();

  runApp(const ICareApp());
}
