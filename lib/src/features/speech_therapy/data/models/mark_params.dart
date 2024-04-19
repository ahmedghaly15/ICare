import 'dart:io';

class MarkParams {
  final int id;
  final int? level;
  final File audioFile;
  final String userId;

  const MarkParams({
    this.level,
    required this.id,
    required this.audioFile,
    required this.userId,
  });
}
