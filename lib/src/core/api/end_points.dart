class EndPoints {
  static const String databaseBaseUrl =
      'https://ahmed-muqawi-medical-app.hf.space/';
  static const String babyCryPredictorBaseUrl =
      'https://ahmed-muqawi-baby-cry-predictor.hf.space/';
  static const String medical = '${databaseBaseUrl}medical';
  static const String emergency = '${databaseBaseUrl}Emergency/';
  static const String medicalInfo = '${databaseBaseUrl}diseases';
  static const String babyCryPredictor =
      '${babyCryPredictorBaseUrl}baby_cry_predictor/';
  static const String getRandomTip = '${databaseBaseUrl}tip';
  static const String bookmarks = '${databaseBaseUrl}Bookmarks/';
  static const String bookmarkICareBotMessage = '${bookmarks}create/';
  static const String retrieveBookmarks = '${bookmarks}retrieve/';
  static const String deleteBookmark = '${bookmarks}delete/';
  static const String speechTherapyBaseUrl =
      'https://ahmed-muqawi-speech-therapy.hf.space/';
  static const String speechTherapyLevels = '${speechTherapyBaseUrl}levels/';
  static const String levelOneTraining =
      '${speechTherapyBaseUrl}level1/training/';
  static const String marking = '${speechTherapyBaseUrl}marking/';
  static const String score = '${speechTherapyBaseUrl}score/';
  static const String levelTwoTraining =
      '${speechTherapyBaseUrl}level2/training/';
  static const String advancedLevelTraining =
      '${speechTherapyBaseUrl}advanced/training/';
  static const String advancedLevelMarking =
      '${speechTherapyBaseUrl}advanced/marking/';
  static const String sendNotification = 'https://fcm.googleapis.com/fcm/send';
  static const String babyCryPredictorClasses =
      '${babyCryPredictorBaseUrl}classes/';
  static const String babyCryPredictorLastResult =
      '${babyCryPredictorBaseUrl}last_result/';
  static const String babyCryPredictorAddNewClass =
      '${babyCryPredictorBaseUrl}add class/';
  static const String babyCryPredictorUploadMissClassifying =
      '${babyCryPredictorBaseUrl}upload audio/';
}
