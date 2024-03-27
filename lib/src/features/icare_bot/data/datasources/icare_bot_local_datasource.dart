import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_response.dart';

abstract class ICareBotLocalDatasource {
  Future<bool> cacheBookmarks(List<BookmarkICareBotMessageResponse> bookmarks);
  List<BookmarkICareBotMessageResponse> retrieveCachedBookmarks();
  String? bookmarksJson();
}

class ICareBotLocalDatasourceImpl implements ICareBotLocalDatasource {
  const ICareBotLocalDatasourceImpl();

  @override
  Future<bool> cacheBookmarks(
    List<BookmarkICareBotMessageResponse> bookmarks,
  ) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedBookmarks,
          value: json
              .encode(bookmarks.map((bookmark) => bookmark.toJson()).toList()),
        );
  }

  @override
  String? bookmarksJson() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedBookmarks);
  }

  @override
  List<BookmarkICareBotMessageResponse> retrieveCachedBookmarks() {
    final List<BookmarkICareBotMessageResponse> bookmarks =
        <BookmarkICareBotMessageResponse>[];

    for (final element in json.decode(bookmarksJson()!)) {
      bookmarks.add(BookmarkICareBotMessageResponse.fromJson(element));
    }

    return bookmarks;
  }
}
