import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

extension FirestoreQueryExtension on Query<Map<String, dynamic>> {
  Future<QuerySnapshot<Map<String, dynamic>>> getQuerySnapshot() async {
    try {
      QuerySnapshot<Map<String, dynamic>> cachedSnapshot =
          await get(const GetOptions(source: Source.cache));

      if (cachedSnapshot.docs.isEmpty) {
        debugPrint(
            '======>>>>>>>> CACHE IS EMPTY, FETCHING FROM SERVER <<<<<========');
        return await get(const GetOptions(source: Source.server));
      } else {
        debugPrint('======>>>>>>>> GOT FIRESTORE CACHED DATA <<<<<========');
        return cachedSnapshot;
      }
    } catch (_) {
      debugPrint('======>>>>>>>> GOT FIRESTORE NOT CACHED DATA <<<<<========');
      return await get(const GetOptions(source: Source.server));
    }
  }
}
