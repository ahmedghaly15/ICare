import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:icare/bloc_observer.dart';
import 'package:icare/src/core/firebase/firebase_options.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/icare_app.dart';
import 'package:icare/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: AppStrings.dotEnvFileName);

  await DependencyInjection().setup();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Bloc.observer = MyBlocObserver();

  runApp(const ICareApp());
}
