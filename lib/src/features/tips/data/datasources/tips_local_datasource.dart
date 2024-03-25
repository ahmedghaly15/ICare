import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/tips/data/models/get_random_tip_response.dart';

abstract class TipsLocalDataSource {
  Future<bool> cacheRandomTip(GetRandomTipResponse randomTip);
  GetRandomTipResponse getCachedRandomTip();
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
}
