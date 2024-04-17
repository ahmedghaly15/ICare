import 'dart:io';

class MarkParams {
  final int id, level;
  final File audioFile;
  final String userId;

  const MarkParams({
    required this.level,
    required this.id,
    required this.audioFile,
    required this.userId,
  });
}
