class CreateTinyTaleParams {
  final String date;
  final String time;
  final String? text;
  final String? tinyTaleImage;

  const CreateTinyTaleParams({
    required this.date,
    required this.time,
    this.text,
    this.tinyTaleImage,
  });
}
