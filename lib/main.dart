import 'package:flutter/material.dart';
import 'package:icare/icare_app.dart';
import 'package:icare/src/core/utils/service_locator.dart';

//TODO: use flutter_spinkit in forgot password and reset password screens

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  ServiceLocator().serviceLocatorSetup();

  runApp(const ICareApp());
}
