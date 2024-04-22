import 'dart:io';

class MarkParams {
  final int id;
  final int? level;
  final int? ayahNum;
  final File audioFile;
  final String userId;

  const MarkParams({
    this.level,
    this.ayahNum,
    required this.id,
    required this.audioFile,
    required this.userId,
  });
}
