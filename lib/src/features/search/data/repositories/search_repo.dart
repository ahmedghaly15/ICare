import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/search/data/datasources/search_datasource.dart';

class SearchRepo {
  final SearchDatasource _searchDatasource;

  const SearchRepo(this._searchDatasource);

  Future<FirebaseRequestResult<List<ICareUser>>> searchUsers(
    String nameOrEmail,
  ) {
    return executeAndHandleFirebaseErrors<List<ICareUser>>(
      () async {
        final List<ICareUser> searchResult = <ICareUser>[];

        final users = await _searchDatasource.searchUsers();

        searchResult.clear();

        for (var user in users.docs) {
          if (user['uId'] != Helper.uId) {
            if (user
                    .data()['name']
                    .toString()
                    .toLowerCase()
                    .contains(nameOrEmail.toLowerCase()) ||
                user
                    .data()['email']
                    .toString()
                    .toLowerCase()
                    .contains(nameOrEmail.toLowerCase())) {
              searchResult.add(ICareUser.fromJson(user.data()));
            }
          }
        }

        return searchResult;
      },
    );
  }
}
