import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/bloc_observer.dart';
import 'package:icare/src/icare_app.dart';
import 'package:icare/service_locator.dart';

//TODO: use flutter_spinkit in forgot password and reset password screens

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();

  ServiceLocator().setupServiceLocator();

  runApp(const ICareApp());
}
