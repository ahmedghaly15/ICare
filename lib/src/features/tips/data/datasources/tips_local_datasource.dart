import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/tips/data/models/get_random_tip_response.dart';

abstract class TipsLocalDataSource {
  Future<bool> cacheRandomTip(GetRandomTipResponse randomTip);
  GetRandomTipResponse getCachedRandomTip();
  Future<DateTime?> getLastRetrievalTime();
  Future<void> updateLastRetrievalTime(DateTime time);
}

class TipsLocalDataSourceImpl implements TipsLocalDataSource {
  const TipsLocalDataSourceImpl();

  @override
  Future<bool> cacheRandomTip(GetRandomTipResponse randomTip) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedRandomTip,
          value: json.encode(randomTip.toJson()),
        );
  }

  @override
  GetRandomTipResponse getCachedRandomTip() {
    final String? cachedRandomTip =
        getIt.get<CacheHelper>().getStringData(key: AppStrings.cachedRandomTip);

    if (cachedRandomTip != null) {
      return GetRandomTipResponse.fromJson(json.decode(cachedRandomTip));
    } else {
      throw Exception('Failed to get random tip from cache');
    }
  }

  @override
  Future<DateTime?> getLastRetrievalTime() async {
    final String? lastRetrievalTime = getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.lastRetrievedCachedRandomTip);
    return lastRetrievalTime != null ? DateTime.parse(lastRetrievalTime) : null;
  }

  @override
  Future<void> updateLastRetrievalTime(DateTime time) async {
    await getIt.get<CacheHelper>().saveData(
          key: AppStrings.lastRetrievedCachedRandomTip,
          value: time.toIso8601String(),
        );
  }
}
