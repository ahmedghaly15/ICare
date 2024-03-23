class CreateTinyTaleParams {
  final String date;
  final String time;
  final String text;
  final String? tinyTaleImage;

  const CreateTinyTaleParams({
    required this.text,
    required this.date,
    required this.time,
    this.tinyTaleImage,
  });
}
