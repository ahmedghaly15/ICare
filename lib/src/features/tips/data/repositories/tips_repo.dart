import 'package:icare/src/core/api/api_error_handler.dart';
import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/features/tips/data/datasources/tips_local_datasource.dart';
import 'package:icare/src/features/tips/data/datasources/tips_remote_datasource.dart';
import 'package:icare/src/features/tips/data/models/get_random_tip_response.dart';

class TipsRepo {
  final TipsRemoteDataSource _tipsRemoteDataSource;
  final TipsLocalDataSource _tipsLocalDataSource;

  const TipsRepo(this._tipsRemoteDataSource, this._tipsLocalDataSource);

  Future<ApiResult<GetRandomTipResponse>> getRandomTip() async {
    try {
      final lastRetrievalTime =
          await _tipsLocalDataSource.getLastRetrievalTime();

      final currentTime = DateTime.now();

      if (lastRetrievalTime == null ||
          currentTime.difference(lastRetrievalTime).inHours >= 24) {
        final GetRandomTipResponse randomTip =
            await _tipsRemoteDataSource.getRandomTip();

        await _tipsLocalDataSource.cacheRandomTip(randomTip);

        await _tipsLocalDataSource.updateLastRetrievalTime(
          currentTime,
        );

        return ApiResult.success(randomTip);
      } else {
        return ApiResult.success(_tipsLocalDataSource.getCachedRandomTip());
      }
    } catch (e) {
      return ApiResult.error(ErrorHandler.handle(e));
    }
  }
}
