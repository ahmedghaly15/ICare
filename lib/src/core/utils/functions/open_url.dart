import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:icare/src/core/helpers/app_regex.dart';
import 'package:url_launcher/url_launcher.dart';

/// Opens a URL from a [LinkableElement] in an appropriate manner.
///
/// This method checks if the link's text is a valid email address using [AppRegex.isEmailValid].
/// If it is a valid email address, it opens the URL directly.
/// Otherwise, it opens the URL in an in-app browser view.
///
/// [link] is the [LinkableElement] containing the URL to be opened.
///
/// Example usage:
/// ```dart
/// LinkableElement link = LinkableElement(text: 'example@example.com', url: 'mailto:example@example.com');
/// openUrl(link);
/// ```
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
