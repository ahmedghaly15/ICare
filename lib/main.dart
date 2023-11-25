import 'package:flutter/material.dart';
import 'package:icare/icare_app.dart';
import 'package:icare/src/core/utils/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  ServiceLocator().serviceLocatorSetup();

  runApp(const ICareApp());
}
