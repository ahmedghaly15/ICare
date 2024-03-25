import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/tips/data/models/get_random_tip_response.dart';

abstract class TipsRemoteDataSource {
  Future<GetRandomTipResponse> getRandomTip();
}

class TipsRemoteDataSourceImpl implements TipsRemoteDataSource {
  final ApiService _apiService;

  const TipsRemoteDataSourceImpl(this._apiService);

  @override
  Future<GetRandomTipResponse> getRandomTip() async {
    return await _apiService.getRandomTip();
  }
}
