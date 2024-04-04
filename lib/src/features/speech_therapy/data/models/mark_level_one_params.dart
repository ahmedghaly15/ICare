import 'dart:io';

class MarkLevelOneParams {
  final int id, level;
  final File audioFile;

  const MarkLevelOneParams({
    required this.level,
    required this.id,
    required this.audioFile,
  });
}
