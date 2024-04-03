import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:icare/src/core/helpers/app_regex.dart';
import 'package:url_launcher/url_launcher.dart';

void openUrl(LinkableElement link) async {
  if (AppRegex.isEmailValid(link.text)) {
    await launchUrl(Uri.parse(link.url));
  } else {
    await launchUrl(
      Uri.parse(link.url),
      mode: LaunchMode.inAppBrowserView,
    );
  }
}
