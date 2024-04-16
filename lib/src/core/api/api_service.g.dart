// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiService implements ApiService {
  _ApiService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://ahmed-muqawi-medical-app.hf.space/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<DiseaseData>> getEmergencyDiseases() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<List<dynamic>>(_setStreamType<List<DiseaseData>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'https://ahmed-muqawi-medical-app.hf.space/Emergency/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    var value = _result.data!
        .map((dynamic i) => DiseaseData.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<GetMedicalInfoResponse>> getMedicalInfo() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<GetMedicalInfoResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'https://ahmed-muqawi-medical-app.hf.space/diseases',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    var value = _result.data!
        .map((dynamic i) =>
            GetMedicalInfoResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<DiseaseDetails> getEmergencyDiseaseDetails(String diseaseId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DiseaseDetails>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'https://ahmed-muqawi-medical-app.hf.space/Emergency/${diseaseId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = DiseaseDetails.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DiseaseDetails> getMedicalInfoDiseaseDetails({
    required String diseaseType,
    required String diseaseId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'disease_id': diseaseId};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DiseaseDetails>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'https://ahmed-muqawi-medical-app.hf.space/${diseaseType}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = DiseaseDetails.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BabyCryPredictorResponse> babyCryPredictor(File babyCryAudio) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.files.add(MapEntry(
      'baby_cry_audio',
      MultipartFile.fromFileSync(
        babyCryAudio.path,
        filename: babyCryAudio.path.split(Platform.pathSeparator).last,
      ),
    ));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BabyCryPredictorResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              'https://ahmed-muqawi-baby-cry-predictor.hf.space/baby_cry_predictor/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BabyCryPredictorResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetRandomTipResponse> getRandomTip() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetRandomTipResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'https://ahmed-muqawi-medical-app.hf.space/tip',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = GetRandomTipResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BookmarkICareBotMessageResponse> bookmarkICareBotMessage(
      BookmarkICareBotMessageParams params) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(params.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BookmarkICareBotMessageResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'https://ahmed-muqawi-medical-app.hf.space/Bookmarks/create/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BookmarkICareBotMessageResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<BookmarkICareBotMessageResponse>> retrieveICareBotBookmarks(
      String userId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<BookmarkICareBotMessageResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'https://ahmed-muqawi-medical-app.hf.space/Bookmarks/retrieve/${userId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    var value = _result.data!
        .map((dynamic i) =>
            BookmarkICareBotMessageResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<DeleteBookmarkResponse> deleteBookmark({
    required String userId,
    required String bookmarkId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DeleteBookmarkResponse>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'https://ahmed-muqawi-medical-app.hf.space/Bookmarks/delete/${userId}/${bookmarkId}/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = DeleteBookmarkResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<LevelOneTrainingResponse>> getLevelOneTrainingData(
      String userId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<LevelOneTrainingResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'https://ahmed-muqawi-speech-therapy.hf.space/level1/training/${userId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    var value = _result.data!
        .map((dynamic i) =>
            LevelOneTrainingResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<MarkResponse> markLevelOneExam(
    int id,
    File audio,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'id': id};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.files.add(MapEntry(
      'audio_file',
      MultipartFile.fromFileSync(
        audio.path,
        filename: audio.path.split(Platform.pathSeparator).last,
      ),
    ));
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<MarkResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              'https://ahmed-muqawi-speech-therapy.hf.space/marking/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = MarkResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
