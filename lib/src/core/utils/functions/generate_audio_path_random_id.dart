import 'dart:math';

/// Generates a random alphanumeric string of length 10.
///
/// This method creates a random string consisting of lowercase letters and digits.
/// It uses the [Random] class to select random characters from the specified [chars] string.
///
/// Example usage:
/// ```dart
/// String randomId = generateAudioPathRandomId();
/// ```
///
/// Returns a random string of length 10.
String generateAudioPathRandomId() {
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  final random = Random();
  return List.generate(
    10,
    (index) => chars[random.nextInt(chars.length)],
    growable: false,
  ).join();
}
