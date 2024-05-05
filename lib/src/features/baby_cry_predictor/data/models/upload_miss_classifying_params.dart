import 'dart:io';

class UploadMissClassifyingParams {
  final File audioFile;
  final String className;

  const UploadMissClassifyingParams({
    required this.audioFile,
    required this.className,
  });
}
