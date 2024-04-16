import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';

abstract class ChatLocalDatasource {
  Future<bool> cacheChats(List<ICareUser> chats);
  String? cachedChatsJson();
  List<ICareUser> retrieveCachedChats();
}

class ChatsLocalDatasourceImpl implements ChatLocalDatasource {
  const ChatsLocalDatasourceImpl();

  @override
  Future<bool> cacheChats(List<ICareUser> chats) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedChats,
          value: json.encode(chats.map((chat) => chat.toJson()).toList()),
        );
  }

  @override
  String? cachedChatsJson() {
    return getIt.get<CacheHelper>().getStringData(key: AppStrings.cachedChats);
  }

  @override
  List<ICareUser> retrieveCachedChats() {
    final List<ICareUser> chats = <ICareUser>[];
    for (final chat in json.decode(cachedChatsJson()!)) {
      chats.add(ICareUser.fromJson(chat));
    }
    return chats;
  }
}
