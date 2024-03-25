import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:icare/src/features/tips/data/datasources/tips_remote_datasource.dart';
import 'package:icare/src/features/tips/data/models/get_random_tip_response.dart';

class TipsRepo {
  final TipsRemoteDataSource _tipsRemoteDataSource;

  const TipsRepo(this._tipsRemoteDataSource);

  Future<ApiResult<GetRandomTipResponse>> getRandomTip() {
    return executeAndHandleErrors<GetRandomTipResponse>(
      () async => await _tipsRemoteDataSource.getRandomTip(),
    );
  }
}
