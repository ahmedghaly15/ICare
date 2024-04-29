import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:icare/dependency_injection.dart';

Future<String?> getMobileToken() async {
  return await getIt.get<FirebaseMessaging>().getToken();
}
